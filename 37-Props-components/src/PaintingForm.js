import React from 'react'

class PaintingForm extends React.Component{
    render(){
        // console.log(this.props)
        return(<div>
            <form onSubmit={(e) => this.props.addPainting(e)}>
                <input type='text' placeholder='Painting Title'/>
                <input type='text' placeholder='Painting Image URL'/>
                <input type='text' placeholder='Artist Name'/>
                <input type='submit' value='Add Painting'/>
            </form>
        </div>)
    }
}

export default PaintingForm