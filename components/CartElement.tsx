// *********************
// Role of the component: Cart icon and quantity that will be located in the header
// Name of the component: CartElement.tsx
// Developer: Aleksandar Kuzmanovic
// Version: 1.0
// Component call: <CartElement />
// Input parameters: no input parameters
// Output: Cart icon and quantity
// *********************

"use client";
import Link from 'next/link'
import React from 'react'
import { FaCartShopping } from 'react-icons/fa6'
import { useProductStore } from "@/app/_zustand/store";

const CartElement = () => {
    const { allQuantity } = useProductStore();
  return (
    <div className="relative">
            <Link href="/cart">
              <FaCartShopping className="text-xl text-[#19130f]" />
              <span className="absolute -right-3 -top-3 flex h-4 w-4 items-center justify-center rounded-full bg-[#9c6232] text-[9px] text-white">
                { allQuantity }
              </span>
            </Link>
          </div>
  )
}

export default CartElement
