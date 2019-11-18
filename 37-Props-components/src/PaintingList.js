import React from 'react'
import PaintingCard from './PaintingCard'

function PaintingList(props){
    // console.log(props)
    return(
        <div>
            {props.paintings.map(painting => <PaintingCard painting={painting} />)}
        </div>
    )
}

export default PaintingList