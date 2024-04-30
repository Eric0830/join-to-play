import React from "react";
import { useState, useEffect } from 'react'
import BookingRecordC from "@/components/booking/booking-record-c";
import { useRouter } from "next/router";
import MemberLayout from "@/components/layout/member-layout";
import { useAuth } from "@/contexts/auth-context"
import { BOOKING_RECORD } from "@/components/config";

export default function BookingRecord() {
  const router = useRouter();
  const { auth } = useAuth()
  console.log(auth);

  const [data, setData] = useState({
    success: false,
    page: 0,
    totalPages: 0,
    rows: []
  });

  useEffect(() => {
    fetch(`${BOOKING_RECORD}${location.search}`)
      .then((r) => r.json())
      .then((dataObj) => {
        setData(dataObj);
      });
  }, []);

  return (
    <>
      <BookingRecordC member_id={auth.id} />
    </>
  );
}

BookingRecord.getLayout = function (page) {
  return <MemberLayout>{page}</MemberLayout>;
};
