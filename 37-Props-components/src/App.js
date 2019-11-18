import React from 'react';
import NavBar from './NavBar'
import 'semantic-ui-css/semantic.min.css';
import paintings from './paintings'
import PaintingList from './PaintingList';


function App() {
  console.log(paintings)
  return (
    <div>
      <NavBar />
      <PaintingList paintings={paintings}/>
    </div>
  );
}

export default App;
