
/************************* Helper Fns for Producing HTML **********************/
function renderAllPokemon(pokemonArray) {
  pokemonArray.map(pokemon => addPokemon(pokemon)) //iterating through all pokemons
}

function addPokemon(pokemon) {
  const pokemonContainer = document.querySelector('#pokemon-container')
  const div = renderSinglePokemon(pokemon); //for each pokemon expecting a card
  pokemonContainer.append(div);
}

function renderSinglePokemon(pokemon) {
{/* <div class="pokemon-card">
  <div class="pokemon-frame">
    <h1 class="center-text">charizard</h1>
    <div class="pokemon-image">
      <img data-id="7" data-action="flip" class="toggle-sprite" src="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png">
    </div>
  </div>
</div> */} // helps top create the pokemon card structure

/*********************************************************************************/

  //creating html elements and assigning needed properties to it
  let div = document.createElement('div')
  div.className = "pokemon-card"

  let frameDiv = document.createElement('div')
  frameDiv.className = "pokemon-frame"

  let h1 = document.createElement('h1')
  h1.className = "center-text"
  h1.innerText = pokemon.name

  let imgDiv = document.createElement('div')
  imgDiv.className = "pokemon-image"

  let img = document.createElement('img')
  img.setAttribute("data-id",pokemon.id)
  img.setAttribute("data-action","flip")
  img.className = "toggle-sprite"
  // img.setAttribute('class', 'toggle-sprite')
  img.src = pokemon.sprites.front

  let delBtn = document.createElement('button')
  delBtn.innerText = "DELETE" 
  delBtn.className = "pokemon-button"

  //Deleting a pokemon
  delBtn.addEventListener('click', () => {
    // console.log(pokemon)
    // debugger
    // fetch(`http://localhost:3000/pokemon/${pokemon.id}`)

    //delete fetch request doesn't need headers or body since we are not sending any dat to the server
    fetch("http://localhost:3000/pokemon/"+pokemon.id, {
      method: "DELETE"
    }) 
    // .then(res => res.json()) DELETE fetch return nothing so no need to convert it to JSON
    .then(()=> {
      div.remove() //updatimng the DOM (removing the div for a deleted pokemon)
    })
  })

  let editBtn = document.createElement('button')
  editBtn.innerText = "EDIT" 
  editBtn.className = "pokemon-button"

  //edit button eventlistner for updating a pokemon
  editBtn.addEventListener('click', () => {
    let editForm = document.querySelector("#pokemon-edit-form")
    // debugger
    editForm[0].value = pokemon.name //displaying name in the input field for name
    editForm[1].value = pokemon.sprites.front //displaying imagURL in the input field for image URL

    editForm.addEventListener('submit', () => {
      event.preventDefault()
      // console.log(editForm)
      // debugger

      fetch("http://localhost:3000/pokemon/"+pokemon.id, {
        method: "PATCH",
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          name: event.target[0].value,//input field for name
          sprites: {
            front: event.target[1].value//input field for image URL
          }
        })
      })
      .then(res => res.json())
      .then(updatePoke => { //returns an updated pokemon as response
        //updating the DOM(update name and url for a updated pokemon)
        h1.innerText = updatePoke.name
        img.src = updatePoke.sprites.front
      })
      event.target.reset() //resetting the form
    })
  })

  imgDiv.append(img)
  frameDiv.append(h1,imgDiv, delBtn, editBtn)
  div.append(frameDiv)

  return div
}
