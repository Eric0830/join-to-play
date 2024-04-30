import React from "react";
import Link from "next/link";
import { BOOKING_ESCAPE_ITEM } from "@/components/config";
import { useRouter } from "next/router";
import { useState, useEffect } from "react";


export default function BookingRecordC({ sid }) {
    const router = useRouter();

    const [data, setData] = useState({
        sid: "",
        member_id: "",
        member_name: "",
        mobile: "",
        store_id: "",
        store_name: "",
        booking_date: "",
        booking_time: "",
        booking_hours: "",
        game_id: "",
        game_name: "",
        player_count: "",
        remark: "",
        created_at: "",
        additionalData: [],
    });

    useEffect(() => {
        console.log(sid);
        if (!sid) return; // 如果沒有 sid 的值, 就不用發 AJAX
        fetch(`${BOOKING_ESCAPE_ITEM}/${member_id}`)
            .then((r) => r.json())
            .then((result) => {
                console.log(result);
                if (result.success) {
                    setData({ ...result.data });
                } else {
                    router.push("/member/booking-record");
                }
            });
    }, [sid, router]);
    console.log(data);

    const AddTheBooking = (e) => {
        e.preventDefault();
    };

    return (
        <>
            <ul className="list-group" style={{ width: "650px", }}>
                <li className="list-group-item" style={{ backgroundColor: "#f9c900", }}>
                    <div className="row">
                        <div className="col-3 ms-1">
                            <span className="usernameTitle">{data.username}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2 ms-1 bookingRecordTitle">
                            <i className="bi bi-shop me-2" />
                            店家名稱
                        </div>
                        <div className="col-auto">
                            <span>{data.store_name}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i class="bi bi-dice-5-fill me-2" />
                            遊戲名稱
                        </div>
                        <div className="col-auto">
                            <span>{data.game_name}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i className="bi bi-calendar-check me-2" />
                            預約日期
                        </div>
                        <div className="col-auto">
                            <span>{data.booking_date}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i class="bi bi-alarm-fill me-2" />
                            預約時段</div>
                        <div className="col-auto">
                            <span>{data.booking_time}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i class="bi bi-hourglass-split me-2" />
                            遊戲時長</div>
                        <div className="col-auto">
                            <span>{data.booking_hours}小時</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i class="bi bi-person-fill me-2" />
                            預約人數</div>
                        <div className="col-auto">
                            {data.additionalData.length > 0 ? (
                                <span>
                                    {data.additionalData[0].player_count_booking}人 （上限： {data.additionalData[0].player_count_game}）
                                </span>
                            ) : (
                                <span>Loading...</span>
                            )}
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i class="bi bi-telephone-fill me-2" />
                            手機</div>
                        <div className="col-auto">
                            <span> {data.mobile}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    <div className="row">
                        <div className="col-2  ms-1 bookingRecordTitle">
                            <i class="bi bi-journals me-2" />
                            備註</div>
                        <div className="col-auto">
                            <span>{data.remark}</span>
                        </div>
                    </div>
                </li>
                <li className="list-group-item">
                    {" "}
                    <div className="row my-3 d-flex justify-content-evenly">
                        <div className="col-auto">
                            <button
                                className="btn btn-primary"
                                type="button"
                                onClick={AddTheBooking}
                            >
                                修改
                            </button>
                        </div>
                        <div className="col-auto">
                            <Link
                                className="btn btn-secondary"
                                type="button"
                                href={`/member`}
                            >
                                返回前頁
                            </Link>
                        </div>
                    </div>
                </li>
            </ul>

            <style jsx>
                {`
        ul {
            border-radius: 10px;
            padding: 0 20px 30px 20px ;
        }
        li {
            padding: 15px;
        }
        .usernameTitle{
            font-weight: 600;
            font-size: 18px;
        }
        .bookingRecordTitle{
            color: #000;
            font-weight: 600;
        }
        `}
            </style>
        </>
    );
}