import React, { useState } from 'react';

function LoginPageT() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = () => {
    if (username.trim() !== '' && password.trim() !== '') {
      // Perform login action
      // For example, you can navigate to the home page
      // You may use react-router-dom for navigation
      // Example: history.push('/home');
    } else {
      // Show error dialog
      alert('Invalid username or password');
    }
  };

  const handleSignUp = () => {
    // Navigate to sign up page
    // You may use react-router-dom for navigation
    // Example: history.push('/signup');
  };

  return (
    <div className="container">
      <div className="text-center">
        <h1>Login as Technician</h1>
      </div>
      <div className="form-group">
        <label>Username</label>
        <input
          type="text"
          className="form-control"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
      </div>
      <div className="form-group">
        <label>Password</label>
        <input
          type="password"
          className="form-control"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />
      </div>
      <div className="text-center">
        <button className="btn btn-primary" onClick={handleLogin}>
          Login
        </button>
        <button className="btn btn-outline-primary" onClick={handleSignUp}>
          Sign Up
        </button>
      </div>
    </div>
  );
}

export default LoginPageT;
