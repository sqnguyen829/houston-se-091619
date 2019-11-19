import React, {Component} from 'react'

export default class PaintingCard extends Component{

    render(){
       return( <div>
                 <h2>{this.props.painting.title}</h2>
                <img src={this.props.painting.image} />
                <p>Artist Name: {this.props.painting.artist.name} </p>
        </div>)
    }

}


// function PaintingCard(props){
//     return(
//         <div>
//                 <h2>{props.painting.title}</h2>
//                 <img src={props.painting.image} />
//                 <p>Artist Name: {props.painting.artist.name} </p>
//         </div>
//     )
// }

// export default PaintingCard