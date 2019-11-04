const BASE_URL = "http://localhost:3000"
const TRAINERS_URL = `${BASE_URL}/trainers`
const POKEMONS_URL = `${BASE_URL}/pokemons`

fetch(TRAINERS_URL)
    .then(res => res.json())
    .then(trainerData => {
        // console.log(trainerData)
        trainerData.forEach(trainer => {
            createTrainerCard(trainer)
        })
    })

const createTrainerCard = (trainer) => {
{/* <div class="card" data-id="1">
    <p>Prince</p>
  <button data-trainer-id="1">Add Pokemon</button>
  <ul>
    <li>Jacey (Kakuna) <button class="release" data-pokemon-id="140">Release</button></li>
    <li>Zachariah (Ditto) <button class="release" data-pokemon-id="141">Release</button></li>
    <li>Mittie (Farfetch'd) <button class="release" data-pokemon-id="149">Release</button></li>
    <li>Rosetta (Eevee) <button class="release" data-pokemon-id="150">Release</button></li>
    <li>Rod (Beedrill) <button class="release" data-pokemon-id="151">Release</button></li>
  </ul>
</div> */}

    const main = document.querySelector("main")

    const div = document.createElement("div")
    div.className = "card"
    div.setAttribute("data-id", trainer.id)

    const pTag = document.createElement("p")
    pTag.innerText = trainer.name

    const addBtn = document.createElement("button")
    addBtn.setAttribute("data-trainer-id", trainer.id)
    addBtn.innerText = "Add Pokemon"

    const ul = document.createElement("ul")

    addPokemonEventListener(addBtn, trainer, ul)
    // addBtn.addEventListener('click', () => {
    //     fetch(POKEMONS_URL, {
    //         method: "POST",
    //         headers: {
    //             "Content-Type": "application/json"
    //         },
    //         body: JSON.stringify({
    //             "trainer_id": trainer.id
    //         })
    //     })
    //     .then(res => res.json())
    //     .then(pokemon => {
    //         addPokemon(ul, pokemon)
    //     })
    // })

    div.append(pTag, addBtn, ul)
    main.append(div)

    trainer.pokemons.forEach(pokemon => {
        addPokemon(ul, pokemon)
    })
}

const addPokemon = (ul, pokemon) => {
    if(ul.children.length <= 5){
        const li = document.createElement("li")
        li.innerText = `${pokemon.nickname} (${pokemon.species})`

        const releaseBtn = document.createElement("button")
        releaseBtn.className = "release"
        releaseBtn.setAttribute("data-pokemon-id", pokemon.id)
        releaseBtn.innerText = "Release"

        releaseBtnEventListener(releaseBtn, li, pokemon)
        // releaseBtn.addEventListener('click', () => {
        //     fetch(`${POKEMONS_URL}/${pokemon.id}`, {
        //         method: "DELETE"
        //     })

        //     li.remove()
        // })

        li.append(releaseBtn)
        ul.append(li)
    }
}

const addPokemonEventListener = (addBtn, trainer, ul) => {
    addBtn.addEventListener('click', () => {
        fetch(POKEMONS_URL, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                "trainer_id": trainer.id
            })
        })
        .then(res => res.json())
        .then(pokemon => {
            addPokemon(ul, pokemon)
        })
    })
}

const releaseBtnEventListener = (releaseBtn, li, pokemon) => {
    releaseBtn.addEventListener('click', () => {
        fetch(`${POKEMONS_URL}/${pokemon.id}`, {
            method: "DELETE"
        })

        li.remove()
    })
}