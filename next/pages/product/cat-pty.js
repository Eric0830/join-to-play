import { useEffect } from 'react'
import { useRouter } from 'next/router'
import Product from '@/components/product/product'
import Pty from '@/components/product/pty'

export default function List() {
  // Toggle the side navigation
  const router = useRouter()

  useEffect(() => {
    // fix next issue
    if (typeof window !== 'undefined') {
      const sidebarToggle = document.body.querySelector('#sidebarToggle')

      if (sidebarToggle) {
        // 在localStorage中儲存目前sidebar情況
        if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
          document.body.classList.toggle('sb-sidenav-toggled')
        }

        sidebarToggle.addEventListener('click', (event) => {
          event.preventDefault()

          document.body.classList.toggle('sb-sidenav-toggled')

          localStorage.setItem(
            'sb|sidebar-toggle',
            document.body.classList.contains('sb-sidenav-toggled')
          )
        })
      }
    }
  }, [])

  return (
    <>
      <div className="row">
        <div className="col-sm-12">
          <div className="container p-4">
            <button
              onClick={() => {
                // 另一種導向另一頁面路由的方式
                router.push('/product/list')
              }}
              className="btn btn-secondary border-0 mb-3 me-2"
              data-bs-container="body"
              data-bs-toggle="popover"
              data-bs-placement="top"
              data-bs-content="Top popover"
            >
              全部商品
            </button>
            <button
              onClick={() => {
                // 另一種導向另一頁面路由的方式
                router.push('/product/cat-new')
              }}
              className="btn btn-secondary border-0 mb-3 me-2"
              data-bs-container="body"
              data-bs-toggle="popover"
              data-bs-placement="right"
              data-bs-content="Right popover"
            >
              新品上市
            </button>
            <button
              onClick={() => {
                // 另一種導向另一頁面路由的方式
                router.push('/product/cat-st')
              }}
              className="btn btn-secondary border-0 mb-3 me-2"
              data-bs-container="body"
              data-bs-toggle="popover"
              data-bs-placement="bottom"
              data-bs-content="Bottom popover"
            >
              策略遊戲
            </button>
            <button
              onClick={() => {
                // 另一種導向另一頁面路由的方式
                router.push('/product/cat-pty')
              }}
              className="btn btn-secondary border-0 mb-3 me-2"
              data-bs-container="body"
              data-bs-toggle="popover"
              data-bs-placement="left"
              data-bs-content="Left popover"
            >
              派對遊戲
            </button>
            <button
              onClick={() => {
                // 另一種導向另一頁面路由的方式
                router.push('/product/cat-edu')
              }}
              className="btn btn-secondary border-0 mb-3 me-2"
              data-bs-container="body"
              data-bs-toggle="popover"
              data-bs-placement="left"
              data-bs-content="Left popover"
            >
              教育遊戲
            </button>
            <hr />
          </div>
          <div className="d-flex" id="wrapper">
            <div id="page-content-wrapper">
              <section className="pd-5">
                <div className="container px-4 px-lg-5 mt-auto">
                  <div className="row gx-4 gx-lg-6 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    {Pty.map((item, index) => {
                      return (
                        <Product
                          key={index}
                          Image={item.Image}
                          title={item.title}
                          name={item.name}
                          price={item.price}
                          item={item}
                        />
                      )
                    })}
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>
      </div>
    </>
  )
}
