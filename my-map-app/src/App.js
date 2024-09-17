import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import HomePage from './components/HomePage';
import NUATMPage from './components/NUATM';
import HeaderBar from './components/HeaderBar';


const App = () => {
  return (
    <Router>
      <HeaderBar />
      <Routes>
        <Route exact path="/" element={<HomePage />} />
        <Route path="/map" element={<NUATMPage />} />  //
      </Routes>
    </Router>
  );
};

export default App;
