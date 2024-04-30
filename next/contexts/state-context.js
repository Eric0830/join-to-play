import React, { createContext, useContext, useState, useEffect } from "react";
import { Toast } from "react-hot-toast";

const Context = createContext();

export const StateContext = ({ children }) => {
  const [showCart, setShowCart] = useState(false);
  const [cartItems, setCartItems] = useState([]);
  const [totalPrice, setTotalPrice] = useState(0);
  const [totalQuantities, setTotalQuantities] = useState(0);
  const [qty, setQty] = useState(1);

  const addItem = (product, quantity = 1) => {
    const checkProductInCart = cartItems.find((item) => item.id === product.id);

    if (checkProductInCart) {
      const updatedCartItems = cartItems.map((cartProduct) => {
        if (cartProduct.id === product.id)
          return {
            ...cartProduct,
            quantity: cartProduct.quantity + quantity,
          };
      });
      setCartItems(updatedCartItems);
    } else {
      setCartItems([...cartItems, product]);
    }

    setTotalPrice(
      (prevTotalPrice) =>
        prevTotalPrice + Number(product.price.split("NT$")[1]) * quantity
    );
    setTotalQuantities((prevTotalQuantities) => prevTotalQuantities + quantity);
  };

  const incQty = () => {
    setQty((prevQty) => prevQty + 1);
  };
  const decQty = () => {
    setQty((prevQty) => {
      if (prevQty - 1 < 1) return 1;

      return prevQty - 1;
    });
  };

  return (
    <Context.Provider
      value={{
        showCart,
        cartItems,
        totalPrice,
        totalQuantities,
        addItem,
        qty,
        incQty,
        decQty,
      }}
    >
      {children}
    </Context.Provider>
  );
};

export const useStateContext = () => useContext(Context);
