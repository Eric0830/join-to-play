import React, { Children } from "react";
import HomeCarousel from "@/components/homepage/homecarousel";
import MyNavbar from "../default-layout/my-navbar";

export default function Homepage({ children }) {
  return (
    <>
      <MyNavbar />
      <div className=" mt-3">
        <HomeCarousel />
      </div>

      <div className="container">
        <main className="">{children}</main>
      </div>
    </>
  );
}
