import React, {Component} from 'react'

export default class PaintingCard extends Component{

    state = {
        votes: this.props.painting.votes
    }

    updateVote = () => {
        this.setState({
            votes: ++this.state.votes
        })
    }

    render(){
       return( <div>
                 <h2>{this.props.painting.title}</h2>
                <img src={this.props.painting.image} />
                <p>Artist Name: {this.props.painting.artist.name} </p>
                <div class="ui labeled button" tabindex="0">
                    <div onClick={this.updateVote} class="ui red button">
                        <i class="heart icon"></i> Like
                    </div>
                    <a class="ui basic red left pointing label">
                        {this.state.votes}
                    </a>
                </div>
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