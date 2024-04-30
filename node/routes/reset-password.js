import express from "express";
import transporter from "../config/mail.js";
import dayjs from "dayjs";
import "dotenv/config.js";

const router = express.Router();

router.get("/",function (req,res){
  console.log(123);
})

/* 寄送email的路由 */
router.post("/forgot-password", async (req, res) => {
  const { email } = req.body;

  // 檢查郵箱是否存在於資料庫中
  const [user] = await db.query("SELECT * FROM member WHERE Email = ?", [
    email,
  ]);
  if (!user.length) {
    return res.status(404).json({ message: "User not found" });
  }

  // 生成重設密碼的 token
  const token = bcrypt.hashSync(email + new Date().toISOString(), 10);

  // 更新資料庫中的 token
  await db.query("UPDATE member SET ResetToken = ? WHERE Email = ?", [
    token,
    email,
  ]);

  // 發送包含重設密碼連結的郵件給用戶
  const transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
      user: "projectreact0456@gmail.com",
      pass: "wtry rark ggdg ajer",
    },
  });

  

  const mailOptions = {
    from: '"毛毛星球" <projectreact0456@gmail.com>',
    to: email,
    subject: "關於毛毛星球的重設密碼",
    html: `
        <h2 style="color:black;">您在剛剛提出密碼重設要求，：</h2>

        <a href="http://localhost:3000/resetpass?token=${token}" >
        <h4>點我重設密碼</h4>
        </a>
    `,
  };

  transporter.sendMail(mailOptions, (error, info) => {
    if (error) {
      console.log(error);
      return res
        .status(500)
        .json({ message: "Failed to send reset password email" });
    } else {
      console.log("Email sent: " + info.response);
      return res.status(200).json({ message: "Reset password email sent" });
    }
  });
});

export default router;
