import React, { useState, useEffect } from 'react';
import '../css/start.css'; // Import the CSS file

function StartPage() {
  const [selectedService, setSelectedService] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      // Replace the logic to randomly select a service here
      setSelectedService(0); // Replace with your desired index or logic
    }, 2000);

    return () => clearInterval(interval);
  }, []);

  return (
    <div className="container">
      <div className="logo-container">
        <img src="assets/quack.jpg" alt="Quack Logo" className="logo" />
      </div>
      <div className="content-container">
        <div className="content">
          <h1 className="title">Easy, reliable way to take care of your home</h1>
          <p className="description">We provide you with the best people to help take care of your home.</p>
          <button className="button" onClick={() => {}}>
            Get Started
          </button>
        </div>
      </div>
    </div>
  );
}

export default StartPage;
