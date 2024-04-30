import React, { useState, useEffect } from 'react';
import Calendar from 'react-calendar';
import { BOOKING_ESCAPE_DATE, BOOKING_ESCAPE_TIME } from "@/components/config";
import { useRouter } from "next/router"

const MyCalendar = ({ onNextStep }) => {

  const router = useRouter();

  const handleNextStep = () => {
    event.preventDefault(); // 阻止表單的默認行為
    onNextStep(); // 在這裡觸發 onNextStep 函數
    closeTimeSlots();
  };

  const [bookingDateData, setBookingDateData] = useState({
    success: false,
    page: 0,
    totalPages: 0,
    rows: []
  });

  const [bookingTimeData, setBookingTimeData] = useState({
    success: false,
    page: 0,
    totalPages: 0,
    rows: []
  });

  useEffect(() => {
    // booking_escape table 的數據
    fetch(BOOKING_ESCAPE_DATE)
      .then((response) => response.json())
      .then((data) => {
        console.log("Fetched Booking Date Data:", data); // 檢查獲取的資料
        setBookingDateData({ success: true, rows: data }); // 將整個資料陣列作為 rows 的值
        setDataLoaded(true); // 當數據加載完成時，將 dataLoaded 設置為 true
        console.log("Booking Date Data Rows:", data.rows); // 檢查 bookingData.rows 的值
      })
      .catch((error) => {
        console.error('Error fetching booking_escape_date data:', error);
      });

    fetch(BOOKING_ESCAPE_TIME)
      .then((response) => response.json())
      .then((data) => {
        console.log("Fetched Booking Time Data:", data); // 檢查獲取的資料
        setBookingTimeData({ success: true, rows: data }); // 將整個資料陣列作為 rows 的值
        setDataLoaded(true); // 當數據加載完成時，將 dataLoaded 設置為 true
        console.log("Booking Time Data Rows:", data.rows); // 檢查 bookingData.rows 的值
      })
      .catch((error) => {
        console.error('Error fetching booking_escape_date data:', error);
      });
  }, [router.query]);


  const [selectedDate, setSelectedDate] = useState(new Date());
  const [showTimeSlots, setShowTimeSlots] = useState(false);
  const [selectedTimeSlot, setSelectedTimeSlot] = useState(null);
  const [selectedMonth, setSelectedMonth] = useState(new Date().getMonth()); // 初始化 selectedMonth
  // 在 MyCalendar 元件中新增一個狀態，用於標記數據是否已加載
  const [dataLoaded, setDataLoaded] = useState(false);

  const handleDateChange = (date) => {
    setSelectedDate(date);
    setShowTimeSlots(true);
    setSelectedMonth(date.getMonth()); // 更新 selectedMonth
  };

  const handleNavigationChange = ({ activeStartDate }) => {
    setSelectedMonth(activeStartDate.getMonth()); // 更新 selectedMonth
  };

  const closeTimeSlots = () => {
    setShowTimeSlots(false);
  };

  const handleTimeSlotClick = (timeSlot) => {
    setSelectedTimeSlot(timeSlot);
  };

  const getTileClassName = ({ date }) => {
    const currentMonth = selectedMonth; // 使用存储的月份
    // 检查日期是否在当前选定的月份之外
    if (date.getMonth() !== currentMonth) {
      return 'notCurrentMonth';
    }
    return '';
  };

  const isDateDisabled = ({ date }) => {
    const currentDate = new Date();
    const currentMonth = currentDate.getMonth();
    const currentYear = currentDate.getFullYear();
    const selectedMonth = date.getMonth();
    const selectedYear = date.getFullYear();

    if (selectedYear > currentYear || (selectedYear === currentYear && selectedMonth >= currentMonth)) {
      return false;
    }
    return true;
  };

  const alreadyBooked = ({ date }) => {
    if (!dataLoaded) {
      return true; // 數據尚未加載完成，禁用所有日期
    }

    const availableTimeSlots = [
      { time: '10:00 - 11:00' },
      { time: '12:00 - 13:00' },
      { time: '14:00 - 15:00' },
      { time: '16:00 - 17:00' },
      { time: '18:00 - 19:00' },
    ];

    const formattedSelectedDate = date.toISOString().split('T')[0]; // 格式化選擇的日期

    // 將每個時間範圍轉換成開始時間，並放入新的陣列中
    const formattedSelectedTimes = availableTimeSlots.map(slot => {
      return slot.time.split(' - ')[0]; // 取得開始時間
    });

    console.log("Formatted Selected Times:", formattedSelectedTimes); // 輸出格式化的選擇日期

    // if(){
    //   今天指定日期底下的時間，預約一個就disable掉一個，判斷disable全部之後，執行底下的}

    // 檢查日期是否已預定
    if (bookingDateData.rows) {
      const formattedBookedDates = bookingDateData.rows.map(booking => {
        const bookedDate = new Date(booking.booking_date);
        bookedDate.setDate(bookedDate.getDate() - 1); // 自動減少日期，因為有個bug尚未解決
        return bookedDate.toISOString().split('T')[0]; // 將預定的日期轉換為相同的格式
      });
      console.log("Formatted Booked Dates:", formattedBookedDates); // 輸出已預定的日期

      if (formattedBookedDates.includes(formattedSelectedDate)) {
        if (bookingTimeData.rows) {
          const formattedBookedTimes = bookingTimeData.rows.map(timeBooking => {
            return timeBooking.booking_time.substring(0, 5); // 取得時間的前5個字元，即開始時間
          });
          console.log("Formatted Booked Times:", formattedBookedTimes); // 輸出已預定的時間

          if (formattedBookedTimes.some(time => formattedSelectedTimes.includes(time))) {
            return true; // 如果時間已預定，則禁用它
          }
        }
      }
    }
    // 允許選擇日期
    return false;
  };


  const alreadyBooked = ({ date }) => {
    if (bookingDateData.rows) {
      const formattedBookedDates = bookingDateData.rows.map(booking => {
        const bookedDate = new Date(booking.booking_date);
        // bookedDate.setDate(bookedDate.getDate() - 1); // 自動減少日期，因為有個bug尚未解決
        return bookedDate.toISOString().split('T')[0]; // 將預定的日期轉換為相同的格式
      });
      console.log("Formatted Booked Dates:", formattedBookedDates); // 輸出已預定的日期

      if (formattedBookedDates.includes(getMonthDates)) {
        if (bookingTimeData.rows) {
          const formattedBookedTimes = bookingTimeData.rows.map(timeBooking => {
            return timeBooking.booking_time.substring(0, 5); // 取得時間的前5個字元，即開始時間
          });
          console.log("Formatted Booked Times:", formattedBookedTimes); // 輸出已預定的時間

          if (formattedBookedTimes.some(time => getAllTimeSlots.includes(time))) {
            return true; // 如果時間已預定，則禁用它
          }
        }
      }
    }
    // 允許選擇日期
    return false;
  };

  const alreadyBooked = ({ date, time }) => {
    if (bookingDateData.rows && bookingTimeData.rows) {
      const formattedBookedDateTime = bookingDateData.rows.map(booking => {
        const bookedDateTime = new Date(booking.booking_date + 'T' + bookingTimeData.rows.find(row => row.booking_date === booking.booking_date).booking_time);
        return bookedDateTime.toISOString(); // 將預定的日期和時間轉換為相同的格式
      });
      console.log("Formatted Booked DateTimes:", formattedBookedDateTime); // 輸出已預定的日期和時間

      if (typeof date === 'string') {
        date = new Date(date); // 將字串轉換為日期對象
      }

      if (date instanceof Date && !isNaN(date)) { // 確認是有效的日期對象
        const selectedDateTime = new Date(date.getFullYear(), date.getMonth(), date.getDate(), time.split(':')[0], time.split(':')[1]);
        console.log(selectedDateTime);
        if (formattedBookedDateTime.includes(selectedDateTime.toISOString())) {
          return true; // 如果日期和時間已預定，則禁用它
        }
      }
    }
    // 允許選擇日期和時間
    return false;
  };

  return (
    <>
      <div>
        <form className='bookingCalendarDiv2'>
          <div className='calendarTitle'>預約日期&時間</div>
          <Calendar
            value={selectedDate}
            onChange={handleDateChange}
            onActiveStartDateChange={handleNavigationChange}
            tileClassName={({ date }) => {
              const currentMonth = selectedMonth;
              if (date.getMonth() !== currentMonth) {
                return 'notCurrentMonth';
              }
              return alreadyBooked({ date }) ? 'alreadyBooked' : ''; // 檢查日期是否已預定，套用 alreadyBooked 樣式
            }}
            tileDisabled={isDateDisabled}
          />

          {showTimeSlots && (
            <div className='availableTimeSlots'>
              <span className='close' onClick={closeTimeSlots}>&times;</span>
              <h4>可選時段</h4>
              <div className='timeSlotsDiv'>
                <li
                  className={`timeSlots ${alreadyBooked({ date: selectedDate }) ? 'alreadyBooked' : ''} ${selectedTimeSlot === '10:00 - 11:00' ? 'timeSelected' : ''}`}
                  onClick={() => handleTimeSlotClick('10:00 - 11:00')}
                >
                  10:00 - 11:00
                </li>
                <li
                  className={`timeSlots ${alreadyBooked({ date: selectedDate }) ? 'alreadyBooked' : ''} ${selectedTimeSlot === '12:00 - 13:00' ? 'timeSelected' : ''}`}
                  onClick={() => handleTimeSlotClick('12:00 - 13:00')}
                >
                  12:00 - 13:00
                </li>
                <li
                  className={`timeSlots ${alreadyBooked({ date: selectedDate }) ? 'alreadyBooked' : ''} ${selectedTimeSlot === '14:00 - 15:00' ? 'timeSelected' : ''}`}
                  onClick={() => handleTimeSlotClick('14:00 - 15:00')}
                >
                  14:00 - 15:00
                </li>
                <li
                  className={`timeSlots ${alreadyBooked({ date: selectedDate }) ? 'alreadyBooked' : ''} ${selectedTimeSlot === '16:00 - 17:00' ? 'timeSelected' : ''}`}
                  onClick={() => handleTimeSlotClick('16:00 - 17:00')}
                >
                  16:00 - 17:00
                </li>
                <li
                  className={`timeSlots ${alreadyBooked({ date: selectedDate }) ? 'alreadyBooked' : ''} ${selectedTimeSlot === '18:00 - 19:00' ? 'timeSelected' : ''}`}
                  onClick={() => handleTimeSlotClick('18:00 - 19:00')}
                >
                  18:00 - 19:00
                </li>
              </div>
            </div>
          )}
          <div className='calendarBtnDiv'><button onClick={handleNextStep} className='calendarBtn'>下一步</button></div>
        </form>
      </div>
    </>

  );
};

export default MyCalendar;