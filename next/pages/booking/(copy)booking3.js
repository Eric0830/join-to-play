import React from 'react';
import Image from 'next/image';
import Link from 'next/link';
import { useState } from 'react';
import BookingLayout from '@/components/layout/booking-layout/index';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import MyCalendar from '@/components/booking/calendar';

export default function BookingEs3() {

  const [weeks, setWeeks] = useState([]);

      // 獲取當前年份及月份
      const currentDate = new Date();
      const year = currentDate.getFullYear();
      const month = currentDate.getMonth();
  
      // 獲取當月的第一天
      const firstDayOfMonth = new Date(year, month, 1);
  
      // 获取当月的最后一天
      const lastDayOfMonth = new Date(year, month + 1, 0);
  
      // 计算第一周的起始日期和结束日期
      // const firstWeekStartDate = firstDayOfMonth.getDate();
      // const firstWeekEndDate = 7 - firstDayOfMonth.getDay();
  
      // 添加第一周到周数组中
      // weeks.push({
      //   startDate: firstWeekStartDate,
      //   endDate: firstWeekEndDate
      // });
  
      // 计算中间周的起始日期和结束日期
      // let startDay = firstWeekEndDate + 1;
      // let endDay = startDay + 6;
  
      // while (endDay < lastDayOfMonth.getDate()) {
      //   weeks.push({
      //     startDate: startDay,
      //     endDate: endDay
      //   });
  
      //   startDay = endDay + 1;
      //   endDay = startDay + 6;
      // }
  
      // 计算最后一周的起始日期和结束日期
      // const lastWeekStartDate = startDay;
      // const lastWeekEndDate = lastDayOfMonth.getDate();
  
      // weeks.push({
      //   startDate: lastWeekStartDate,
      //   endDate: lastWeekEndDate
      // });
  
      // this.setState({ weeks });
  
  
    // render() {
    //   const { weeks } = this.state;
    // }
  


  return (
    <>
      <div
        id="carouselExampleIndicators"
        className="carousel slide"
        data-bs-ride="carousel"
      >
        <div className="carousel-indicators">
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to={0}
            className="active"
            aria-current="true"
            aria-label="Slide 1"
          />
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to={1}
            aria-label="Slide 2"
          />
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to={2}
            aria-label="Slide 3"
          />
        </div>
        <div className="carousel-inner">
          <div className="carousel-item active">
            <img src="/images/booking/game1.jpg" className="d-block w-100" alt="..." />
          </div>
          <div className="carousel-item">
            <img src="/images/booking/game2.jpg" className="d-block w-100" alt="..." />
          </div>
          <div className="carousel-item">
            <img src="/images/booking/game3.jpg" className="d-block w-100" alt="..." />
          </div>
        </div>
        <button
          className="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleIndicators"
          data-bs-slide="prev"
        >
          <span className="carousel-control-prev-icon" aria-hidden="true" />
          <span className="visually-hidden">Previous</span>
        </button>
        <button
          className="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleIndicators"
          data-bs-slide="next"
        >
          <span className="carousel-control-next-icon" aria-hidden="true" />
          <span className="visually-hidden">Next</span>
        </button>
      </div>
      <div className="gameDetail">
        {/* 遊戲介紹 */}
        <div className="gameInfo d-flex">
          {/* 介紹左邊 */}
          <div className="gameInfoImgDiv mx-auto">
            <p className="gameInfoImgText1 mx-auto">沒有靈魂的軀殼</p>
            <p className="gameInfoImgText2 mx-auto">該如何喚醒？</p>
            <img src="/images/booking/gameInfoImg.png" className="gameInfoImg mx-auto" />
          </div>
          {/* 介紹右邊 */}
          <div className="gameInfoTextDiv">
            <h5 className="gameInfoTextTitle">浮士德家的後院</h5>
            <p className="gameInfoTextSubtitle">——— <strong>故事介紹</strong> ———</p>
            <span className="gameInfoTextContent">
              各大報近日不約而同，出現一則神秘的徵人啟示!
            </span>
            <p className="gameInfoTextContent">
              內容是一名男子的未婚妻在不明原因下成了沒有靈魂的軀殼，不斷地喃喃自語著無人能理解的話語；男子發出重賞徵求能喚醒未婚妻的人，各界紛紛組成研究團隊，但至今仍卻無人能成功；來到這裡的你們是最後的希望，調查靈魂消失的原因，找尋喚醒女子的方法吧！
            </p>
            <div className="gameSOP">
              <div className="gameSOP1">
                <FontAwesomeIcon icon="fa-solid fa-users" className='gameIcon' />
                <h6 className='gameSOPIconName'>遊戲人數</h6>
                <p className='gameSOPIconText'>4-6人</p>
              </div>
              <div className="gameSOP2">
                <FontAwesomeIcon icon="fa-solid fa-flag-checkered" className='gameIcon' />
                <h6 className='gameSOPIconName'>遊玩前講解</h6>
                <p className='gameSOPIconText'>10-15分鐘</p>
              </div>
              <div className="gameSOP3">
                <FontAwesomeIcon icon="fa-solid fa-hourglass-start" className='gameIcon' />
                <h6 className='gameSOPIconName'>遊戲時間</h6>
                <p className='gameSOPIconText'>70分鐘</p>
              </div>
              <div className="gameSOP4">
                <FontAwesomeIcon icon="fa-solid fa-person-through-window" className='gameIcon' />
                <h6 className='gameSOPIconName'>遊玩後講解</h6>
                <p className='gameSOPIconText'>5-10分鐘</p>
              </div>
            </div>
          </div>
        </div>
        <div className="TypeAndPlayer d-flex">
          <div className="gameType">
            <img className="gameTypeImg" src="/images/booking/game4.jpg" />
            <h6 className='typeTitle'>主題類型</h6>
            <p className='typeContent'>科幻穿越元素<br />任務型密室逃脫</p>
          </div>
          <div className="player">
            <img className="playerImg" src="/images/booking/game5.jpg" />
            <h6 className='playerTitle'>適合對象</h6>
            <p className='playerContent'>有一點密室逃脫經驗者<br />喜歡自行搜索線索推動故事</p>
          </div>
        </div>
        <div className="gameReview">
          <h6 className='reviewTitle'>玩家評價</h6>
          <div className='reviewDiv'>
            <img className="profilePic" src='/images/booking/storelogo.png' alt='profilePic' />
            <div>玩家姓名</div>
            <div>
              <i className="bi bi-star-fill star" />
              <i className="bi bi-star-half star" />
              <span>評論時間要做嗎</span>
            </div>
            <div>評論內容</div>
            <div>遊玩日期</div>
            <div className='reviewEditIcon'>編輯的三個點點icon</div>
          </div>
        </div>

        <div className='bookingDiv'>
          {/* 左邊 */}
          <div className='priceNoticeDiv'>
            <div className="gamePrice">
              <img className='WeekdaysImg' src='/images/booking/WeekdaysICON.png' alt='WeekdaysImg' />
              <p className='WeekdaysP'>平日價格</p>
              <img className='HolidayImg' src='/images/booking/HolidayICON.png' alt='HolidayImg' />
              <p className='HolidayP'>假日價格</p>
            </div>
            <div className="gameNoticeDiv">
              <div className="gameNotice"><FontAwesomeIcon icon="fa-solid fa-triangle-exclamation" className='noticeIcon' />預約注意事項</div>
              <p className='gameNoticeP'>注意事項</p>
            </div>
          </div>
          {/* 右邊 */}
    
          <div className="bookingCalendar">
            <div>
          {weeks.map((week, index) => (
            <div key={index}>
              Week {index + 1}: {week.startDate} - {week.endDate}
            </div>
          ))}
        </div>

        <div>
      <MyCalendar />
    </div>
    
          </div>
        </div>
      </div>
    </>
  );
}

BookingEs3.getLayout = function (page) {
  return <BookingLayout>{page}</BookingLayout>;
};

