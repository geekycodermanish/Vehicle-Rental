import React, { useContext } from "react";
import { FormContext } from "../formContext/FormContextProvider";
import { addLastName, addName } from "../formContext/action";

const UserDetail = () => {
  const { formState, formDispatch } = useContext(FormContext);
  return (
    <div className="p-4">
      <h3 className="text-lg font-bold mb-4 leading-5 mt-4">
        <span className="text-[#6BBB69]">First</span>, enter your name?
      </h3>
      <div className="relative my-6 flex flex-col gap-6 text-[12px]">
        <div className="relative">
          <input
            type="text"
            id="firstName"
            className="border-2 border-solid hover:border-[#6BBB69] block px-2.5 pb-2.5 pt-4 w-full text-sm text-gray-900 bg-transparent rounded-lg border-1 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            name="firstName"
            onChange={(e) => formDispatch(addName(e.target.value))}
            value={formState.firstName}
          />
          <label
            htmlFor="firstName"
            className="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] bg-white dark:bg-gray-900 px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4"
          >
            First Name
          </label>
        </div>

        <div className="relative">
          <input
            type="text"
            id="lastName"
            className="border-2 border-solid hover:border-[#6BBB69] block px-2.5 pb-2.5 pt-4 w-full text-sm text-gray-900 bg-transparent rounded-lg border-1 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
            placeholder=" "
            name="lastName"
            onChange={(e) => formDispatch(addLastName(e.target.value))}
            value={formState.lastName}
          />
          <label
            htmlFor="lastName"
            className="absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-4 scale-75 top-2 z-10 origin-[0] bg-white dark:bg-gray-900 px-2 peer-focus:px-2 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:top-1/2 peer-focus:top-2 peer-focus:scale-75 peer-focus:-translate-y-4"
          >
            Last Name
          </label>
        </div>
      </div>
    </div>
  );
};

export default UserDetail;
