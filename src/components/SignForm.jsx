import React from "react";
import { useFormik } from "formik";

const SignForm = () => {
  // Pass the useFormik() hook initial form values and a submit function that will
  // be called when the form is submitted

  const classes = {
    pageBody: "h-screen flex bg-grey",
    formContainer:
      "w-full max-w-md m-auto bg-white rounded-lg border border-primaryBorder shadow-default py-10 px-16",
    formHeading: "text-2xl font-medium text-primary mt-4 mb-12 text-center",
    btnContainer: "flex justify-center items-center mt-6",
    btnCharacter: `bg-green py-2 px-4 text-sm text-white rounded border border-green focus:outline-none focus:border-green-dark`,
    inputBoxDesign: `w-full p-2 text-primary border rounded-md outline-none text-sm transition duration-150 ease-in-out mb-4`,
  };

  const formik = useFormik({
    initialValues: {
      email: "",
      password: "",
    },
    onSubmit: (values) => {
      alert(JSON.stringify(values, null, 2));
    },
  });
  return (
    <div className={classes.pageBody}>
      <div className={classes.formContainer}>
        <h1 className={classes.formHeading}>Log in to your account</h1>
        <form onSubmit={formik.handleSubmit}>
          <label htmlFor="email">Email Address</label>
          <input
            id="email"
            className={`w-full p-2 text-primary border rounded-md outline-none text-sm transition duration-150 ease-in-out mb-4`}
            name="email"
            type="email"
            onChange={formik.handleChange}
            value={formik.values.email}
          />

          <label htmlFor="email">Email Address</label>
          <input
            id="password"
            className={`w-full p-2 text-primary border rounded-md outline-none text-sm transition duration-150 ease-in-out mb-4`}
            name="password"
            type="password"
            onChange={formik.handleChange}
            value={formik.values.password}
          />

          <div
            className={classes.btnContainer}
            //className='flex justify-center items-center mt-6'
          >
            <button
              className={classes.btnCharacter}
              //className={`bg-green py-2 px-4 text-sm text-white rounded border border-green focus:outline-none focus:border-green-dark`}
            >
              Login
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};
export default SignForm;