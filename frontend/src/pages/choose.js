import React, { useState } from 'react';
// import '../css/choose.css'

function ChoosePage() {
  const [selectedValue, setSelectedValue] = useState(null);

  const handleRadioButtonChange = (value) => {
    setSelectedValue(value);
    // Navigate based on selected value
    if (value === 0) {
      // Navigate to client login page
      // You may use react-router-dom for navigation
      // Example: history.push('/login/client');
    } else if (value === 1) {
      // Navigate to technician login page
      // You may use react-router-dom for navigation
      // Example: history.push('/login/technician');
    }
  };

  return (
    <div className="container">
      <div className="text-center">
        <h1>Login as</h1>
      </div>
      <div className="row mt-4">
        <div className="col">
          <CustomRadioButton
            label="Client"
            image="assets/client.jpg" // Replace with the actual path to the client image
            value={0}
            checked={selectedValue === 0}
            onChange={handleRadioButtonChange}
          />
        </div>
        <div className="col">
          <CustomRadioButton
            label="Technician"
            image="assets/technician.jpg" // Replace with the actual path to the technician image
            value={1}
            checked={selectedValue === 1}
            onChange={handleRadioButtonChange}
          />
        </div>
      </div>
    </div>
  );
}

function CustomRadioButton({ label, image, value, checked, onChange }) {
  return (
    <div className="text-center">
      <img src={image} alt={label} style={{ width: '100px', height: '200px' }} />
      <h2>{label}</h2>
      <input type="radio" value={value} checked={checked} onChange={() => onChange(value)} />
    </div>
  );
}

export default ChoosePage;
