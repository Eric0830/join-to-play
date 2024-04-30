import express from "express";
import db from "../utils/mysql2-connect.js";
import { z } from "zod";
import dayjs from "dayjs";

const router = express.Router();

const getListData = async (req, res) => {
  // SELECT * FROM `booking_escape` WHERE `name` LIKE '%詩涵%'
  let keyword = req.query.keyword || "";

  // let member_id = 0;  // 預設值為  0
  if (res.locals.jwt && res.locals.jwt.id) {
    // 如果有 JWT 授權
    member_id = res.locals.jwt.id;
  }

  let where = " WHERE 1 ";
  if (keyword) {
    // 避免 SQL injection
    where += ` AND (
    be.\`name\` LIKE ${db.bookingEscape(`%${keyword}%`)} 
    OR
    be.\`mobile\` LIKE ${db.bookingEscape(`%${keyword}%`)}
    )
    `;
  }

  let redirect = ""; // 作為轉換依據的變數
  const perPage = 1; // 每頁最多幾筆
  const sql = `SELECT COUNT(1) totalRows FROM booking_escape be ${where}`;
  let page = +req.query.page || 1;
  if (page < 1) {
    redirect = "?page=1";
    return { success: false, redirect };
  }

  // 多層的展開, totalRows 總筆數
  const [[{ totalRows }]] = await db.query(sql);
  const totalPages = Math.ceil(totalRows / perPage); // 總頁數

  let rows = [];
  if (totalRows > 0) {
    if (page > totalPages) {
      redirect = `?page=${totalPages}`;
      return { success: false, redirect };
    }
    const sql2 = `SELECT * FROM \`booking_escape\` 
    
    ${where} ORDER BY sid DESC LIMIT ${(page - 1) * perPage
      }, ${perPage}`;
    [rows] = await db.query(sql2);
  }

  // 獲取預約數據
  // let reservations = [];
  // try {
  //   const sql = "SELECT * FROM booking_escape";
  //   const [rows, fields] = await db.query(sql);
  //   reservations = rows;
  // } catch (error) {
  //   console.error("Error fetching reservations data:", error);
  // }

  return {
    success: true,
    totalRows,
    perPage,
    totalPages,
    rows,
    page,
    keyword,
    qs: req.query,
  };
};

// 定義一個端點來獲取預約數據-日期
router.get("/dateTime", async (req, res) => {
  try {
    const sql = "SELECT `booking_date`,`booking_time` FROM booking_escape";
    const [rows, fields] = await db.query(sql);
    res.json(rows);
  } catch (error) {
    console.error("Error fetching reservations data:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});


router.get("/api", async (req, res) => {
  const data = await getListData(req, res);
  res.json(data);
});

router.get("/", async (req, res) => {
  try {
    const sql = "SELECT * FROM booking_escape";
    const [rows, fields] = await db.query(sql);
    res.json(rows);
  } catch (error) {
    console.error("Error fetching data:", error);
    res.status(500).json({ error: "Internal server error" });
  }
});


// 刪除
router.delete("/:sid", async (req, res) => {
  const sid = +req.params.sid || 0;
  if (sid === 0) {
    return res.json({
      success: false,
      info: "無效的參數",
    });
  }

  const sql = `DELETE FROM booking_escape WHERE sid=?`;
  const [result] = await db.query(sql, [sid]);
  res.json(result);
  /*
  {
    "fieldCount": 0,
    "affectedRows": 1,
    "insertId": 0,
    "info": "",
    "serverStatus": 2,
    "warningStatus": 0,
    "changedRows": 0
}
  */
});

//新增
// 呈現新增資料的表單
router.get("/add", async (req, res) => {
  // res.locals.title = "新增通訊錄 — " + res.locals.title;
  res.render("booking_escape/add");
});
// 處理新增資料的表單
router.post("/add", async (req, res) => {
  const output = {
    success: false,
    postData: req.body,
    error: "",
    code: 0,
  };
  // TODO: 資料格式檢查
  const formSchema = z.object({
    member_name: z.string().min(2, { message: "名字長度要大於等於 2" }),
    // email: z.string().email({ message: "請填寫正確的 email" }),
    mobile: z
      .string()
      .regex(/^09\d{2}-?\d{3}-?\d{3}$/, { message: "請填寫正確的手機號碼" }),
  });

  const parseResult = formSchema.safeParse(req.body);
  if (!parseResult.success) {
    output.issues = parseResult.error.issues;
    return res.json(output);
  }

  /*
  const sql = "INSERT INTO `address_book`(`name`, `email`, `mobile`, `birthday`, `address`, `created_at`) VALUES (?, ?, ?, ?, ?, NOW())";
  const [result] = await db.query(sql, [
    req.body.name,
    req.body.email,
    req.body.mobile,
    req.body.birthday,
    req.body.address,
  ]);
  */

  // 根據 member_name 查詢對應的 member_id
  // let memberId;
  // const memberName = req.body.username;
  // const sql = "SELECT id FROM member WHERE username = ?";
  // try {
  //   const [rows] = await db.query(sql, [memberName]);
  //   if (rows.length > 0) {
  //     memberId = rows[0].id;
  //   } else {
  //     // 若找不到對應的 member_name，返回錯誤訊息
  //     output.error = "找不到對應的會員名稱";
  //     return res.json(output);
  //   }
  // } catch (error) {
  //   output.error = error.toString();
  //   return res.json(output);
  // }

  // // 將 member_id 與表單資料一起插入到資料庫中
  // const bookingData = {
  //   member_id: memberId,
  //   member_name: memberName,
  //   // 其他表單欄位...
  // };

  // const sql2 = "INSERT INTO `booking_escape` SET ?";
  // bookingData.created_at = new Date(); // 新增屬性 created_at (欄位名稱)
  // let result;
  // try {
  //   [result] = await db.query(sql2, [bookingData]);
  //   output.success = !!result.affectedRows;
  // } catch (ex) {
  //   output.error = ex.toString();
  // }

  // res.json(output);


  const sql2 = "INSERT INTO `booking_escape` SET ?";
  req.body.created_at = new Date(); // 新增屬性 created_at (欄位名稱)
  let result;
  try {
    [result] = await db.query(sql2, [req.body]);
    output.success = !!result.affectedRows;
  } catch (ex) {
    output.error = ex.toString();
  }

  res.json(output);
});

// 要處理 multipart/form-data
// router.post("/add/multi", upload.none(), async (req, res) => {
//   res.json(req.body);
// });


// 修改資料的表單
router.get("/edit/:sid", async (req, res) => {
  const sid = +req.params.sid || 0;
  if (!sid) {
    return res.redirect("/booking-escape");
  }
  const sql = `SELECT * FROM booking_escape WHERE sid=${sid}`;
  const [rows] = await db.query(sql);
  if (!rows.length) {
    return res.redirect("/booking-escape");
  }
  const r = rows[0];
  const d = dayjs(r.birthday);
  r.birthday = d.isValid() ? d.format("YYYY-MM-DD") : "";
  res.render("address-book/edit", r);
});

router.put("/edit/:sid", async (req, res) => {
  const output = {
    success: false,
    postData: req.body,
    error: "",
    code: 0,
  };

  let sid = +req.params.sid || 0;

  let birthday = dayjs(req.body.birthday, "YYYY-MM-DD", true); // dayjs 物件
  // 置換處理過的值
  req.body.birthday = birthday.isValid() ? birthday.format("YYYY-MM-DD") : null;

  // TODO: 資料格式檢查

  const sql = "UPDATE `booking_escape` SET ? WHERE sid=?";
  try {
    // 執行 SQL 時最好做錯誤處理
    const [result] = await db.query(sql, [req.body, sid]);
    /*
    {
      "fieldCount": 0,
      "affectedRows": 1,
      "insertId": 0,
      "info": "Rows matched: 1  Changed: 1  Warnings: 0",
      "serverStatus": 2,
      "warningStatus": 0,
      "changedRows": 1
    }
    */
    output.success = !!(result.affectedRows && result.changedRows);
  } catch (ex) {
    output.error = ex.toString();
  }
  res.json(output);
});

router.get("/zod", (req, res) => {
  const strSchema = z.string().min(4, { message: "請填寫長度四以上的字串" });

  res.json({
    result: strSchema.safeParse("12"),
  });
});

// // 取得單筆資料的 API
// router.get("/record/:member_id", async (req, res) => {

//   // const sid = +req.params.sid || 0;
//   // if (!sid) {
//   //   return res.json({ success: false });
//   // }

//   const memberId = +req.params.member_id || 0;
//   if (!memberId) {
//     return res.json({ success: false });
//   }

//   // // 區別兩個資料表的player_count欄位
//   // const sql3 = `SELECT booking_escape.player_count AS player_count_booking,
//   // game.player_count AS player_count_game
//   // FROM booking_escape
//   // JOIN game ON booking_escape.game_id = game.sid
//   // WHERE booking_escape.sid=?`;

//   const sql = `SELECT * 
//   FROM booking_escape 
//   JOIN store_escape ON store_id =store_escape.sid
//   JOIN game ON game_id = game.sid
//   JOIN member ON member_id = member.id
//   WHERE booking_escape.member_id IN (${memberId})`;

//   const [rows] = await db.query(sql, [memberId]);
//   console.log(rows);

//   if (!rows.length) {
//     return res.json({ success: false });
//   }
//   const r = rows[0];
//   const d = dayjs(r.booking_date);
//   r.booking_date = d.isValid() ? d.format("YYYY-MM-DD") : "";

//   // // 在這裡執行第二個查詢
//   // const [additionalData] = await db.query(sql3, [r.sid]);

//   // // 合併兩個查詢的結果
//   // const responseData = { ...r, additionalData };

//   res.json({ success: true, data: r });

// }

router.get("/record/:member_id", async (req, res) => {

  const memberId = +req.params.member_id || 0;
  if (!memberId) {
    return res.json({ success: false });
  }

  const sql = `SELECT * 
  FROM booking_escape 
  JOIN store_escape ON store_id = store_escape.sid
  JOIN game ON game_id = game.sid
  JOIN member ON member_id = member.id
  WHERE booking_escape.member_id = ?`;

  const [rows] = await db.query(sql, [memberId]);
  console.log(rows);

  if (!rows.length) {
    return res.json({ success: false });
  }

  rows.forEach(r => {
    const d = dayjs(r.booking_date);
    r.booking_date = d.isValid() ? d.format("YYYY-MM-DD") : "";
  });

  res.json({ success: true, data: rows });

});




export default router;
