// console.log("Are we here?")

{/* <div class="ui inverted red menu">
      <a class='item'>
        <h2 class="ui header">
          <i class="bug icon"></i>
          <div class="content">
            bugger
          </div>
        </h2>
      </a>
    </div> */}

const NavBar = (props) => {
  // debugger
  return(<div className={`ui inverted ${props.color} menu`}>
  <a className='item'>
    <h2 className="ui header">
      <i className={`${props.icon} icon`}></i>
      <div className="content">
        bugger
      </div>
    </h2>
  </a>
</div> )
}

  const App = () => {
    return(
      <div>
      <NavBar color="blue" icon="paw"/>
      </div>
    )
  }

ReactDOM.render(
<App/>, 
document.getElementById("container"))