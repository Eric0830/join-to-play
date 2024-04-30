import Image from "next/image";
import Link from "next/link";
import styles from "./toolbar.module.scss";

export default function Toolbar() {
  return (
    <ul className="navbar-nav pe-2 ms-auto">
      <li
        // className="nav-item dropdown"
        className={`nav-item dropdown ${styles["dropdown"]}`}
      >
        <Link
          className="nav-link dropdown-toggle btn btn-hover-white"
          href=""
          role="button"
          data-bs-toggle="dropdown"
          aria-expanded="false"
          title="會員中心"
        >
          <i className="bi bi-person-circle"></i>
          <p className="d-none d-md-inline d-lg-none">會員中心</p>
        </Link>
        <ul
          className={`dropdown-menu dropdown-menu-end p-4 mw-100 ${styles["slideIn"]} ${styles["dropdown-menu"]}`}
        >
          <li>
            <p className="text-center">
              <Image
                src="/avatar.svg"
                className="rounded-circle d-block mx-auto"
                alt="..."
                width={80}
                height={80}
              />
            </p>
            <p className="text-center">
              會員姓名: 艾迪
              <br />
              帳號: eddy123
            </p>
          </li>
          <li>
            <Link className="dropdown-item text-center" href="/admin">
              會員管理區
            </Link>
          </li>
          <li>
            <hr className="dropdown-divider" />
          </li>
          <li>
            <Link className="dropdown-item text-center " href="#">
              客服中心
            </Link>
          </li>
        </ul>
      </li>
      <li className="nav-item">
        <button
          className="nav-link  btn btn-hover-white" //onClick=""
        >
          <i className="bi bi-cart-fill"></i>
          <span className="cart-item-qty">1</span>
        </button>
      </li>
    </ul>
  );
}
