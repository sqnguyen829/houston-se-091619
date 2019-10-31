document.addEventListener('DOMContentLoaded', () => {
  let allPokemonData = []

  fetch('http://localhost:3000/pokemon'/*, { method: 'GET' }*/)
  .then(res => {return res.json()}) //.then(res => res.json())
  .then(data => {
    allPokemonData = data
    renderAllPokemon(allPokemonData)
    // renderAllPokemon(data)

  })

  //Lecture Task Solution
  let newPokeForm = document.querySelector("#pokemon-post-form")

  //creating a new pokemon
  newPokeForm.addEventListener('submit', () => {
    event.preventDefault()

    fetch('http://localhost:3000/pokemon',{
      method: "POST",
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
    .then(newPoke => { //returns a new pokemon as response
      addPokemon(newPoke)
    })

    event.target.reset()

  })

})
