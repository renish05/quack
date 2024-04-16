import React from "react";
import { Link } from "react-router-dom";

const DevPage = () => {
  return (
    <div>
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/start">Start Page</Link>
        </li>
        <li>
          <Link to="/clogin">Client Login</Link>
        </li>
        <li>
          <Link to="/csignup">Client Signup</Link>
        </li>
        <li>
          <Link to="/tlogin">Tech Login</Link>
        </li>
        <li>
          <Link to="/tsignup">Tech Signup</Link>
        </li>
        <li>
          <Link to="/choose">Choose Page</Link>
        </li>
        <li>
          <Link to="/cselservice">Client Select Service</Link>
        </li>
        <li>
          <Link to="/cselservice2">Client Select Service 2</Link>
        </li>
        <li>
          <Link to="/cdatetime">Client Select Date and Time</Link>
        </li>
        <li>
          <Link to="/chome">Client Home Page</Link>
        </li>
        <li>
          <Link to="/thome">Tech Home Page</Link>
        </li>
      </ul>
    </div>
  );
};

export default DevPage;
