import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import { Link } from "react-router-dom";
import StartPage from "./pages/StartPage";
import ClientLogin from "./pages/ClientLogin";
import ClientSignup from "./pages/ClientSignup";
import TechLogin from "./pages/TechLogin";
import TechSignup from "./pages/TechSignup";
import ChoosePage from "./pages/ChoosePage";
import ClientSelService2 from "./pages/ClientSelService2";
import ClientDateTime from "./pages/ClientDateTime";
import ClientHomePage from "./pages/ClientHomePage";
import TechHomePage from "./pages/TechHomePage";
import ClientSelService from "./pages/ClientSelService";
import DevPage from "./devpage";

function App() {
  return (
    <Router>
      <div className="App">
        <Link to="/">DevPage</Link>
        <Routes>
          <Route exact path="/" element={<DevPage />} />
          <Route exact path="/start" element={<StartPage />} />
          <Route path="/clogin" element={<ClientLogin />} />
          <Route path="/csignup" element={<ClientSignup />} />
          <Route path="/tlogin" element={<TechLogin />} />
          <Route path="/tsignup" element={<TechSignup />} />
          <Route path="/choose" element={<ChoosePage />} />
          <Route path="/cselservice" element={<ClientSelService />} />
          <Route path="/cselservice2" element={<ClientSelService2 />} />
          <Route path="/cdatetime" element={<ClientDateTime />} />
          <Route path="/chome" element={<ClientHomePage />} />
          <Route path="/thome" element={<TechHomePage />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
