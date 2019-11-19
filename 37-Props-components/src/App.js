import React from 'react';
import NavBar from './NavBar'
import 'semantic-ui-css/semantic.min.css';
import paintings from './paintings'
import PaintingList from './PaintingList';
import PaintingForm from './PaintingForm';


class App extends React.Component {

  render(){return (
    <div>
      <NavBar />
      <PaintingList paintings={paintings}/> 
    </div>
  );}
}

export default App;
