document.addEventListener('DOMContentLoaded', () => {
  let allPokemonData = []

  fetch('http://localhost:3000/pokemon'/*, { method: 'GET' }*/)
  .then(res => {return res.json()}) //.then(res => res.json())
  .then(data => {
    allPokemonData = data
    renderAllPokemon(allPokemonData)
    // renderAllPokemon(data)

  })

})
