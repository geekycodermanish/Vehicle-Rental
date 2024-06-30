import React from "react";
import { Link } from "react-router-dom";

const Navbar = () => {
  return (
    <div className="w-[90%] md:w-[70%] mx-auto">
      <nav className="flex flex-col md:flex-row justify-between p-5">
        <div className="text-xl font-bold inline-block m-5 cursor-pointer">
          <Link to="/">Home</Link>
        </div>
        <div className="text-xl font-bold inline-block m-5 cursor-pointe">
          <Link to="/all-bookings">All Bookings</Link>
        </div>
      </nav>
    </div>
  );
};

export default Navbar;
