let addToy = false

document.addEventListener("DOMContentLoaded", ()=>{
  const addBtn = document.querySelector('#new-toy-btn')
  const toyForm = document.querySelector('.container')
  const toyCollection = document.querySelector("#toy-collection")
  const newToyForm = document.querySelector(".add-toy-form")

  addBtn.addEventListener('click', () => {
    // hide & seek with the form
    addToy = !addToy
    if (addToy) {
      toyForm.style.display = 'block'
    } else {
      toyForm.style.display = 'none'
    }
  })


  fetch("http://localhost:3000/toys")
  .then(res => res.json())
  .then(toys => {
    toys.map( toy => renderToy(toy))
  })



  function renderToy(toy){
  //   <div class="card">
  //   <h2>Woody</h2>
  //   <img src=toy_image_url class="toy-avatar" />
  //   <p>4 Likes </p>
  //   <button class="like-btn">Like <3</button>
  // </div>

  const div = document.createElement('div')
  div.className = "card"

  const h2 = document.createElement('h2')
  h2.innerText = toy.name

  const img = document.createElement('img')
  img.className = "toy-avatar"
  img.setAttribute("src", toy.image)

  const p = document.createElement('p')
  p.innerText = `${toy.likes} Likes`

  const btn = document.createElement('button')
  btn.className = "like-btn"
  btn.innerText = "Like <3"

  btn.addEventListener('click', () => {

    fetch("http://localhost:3000/toys/"+toy.id, {
      method: "PATCH",
      headers: {
        "Content-Type": 'application/json'
      },
      body: JSON.stringify({
        "likes": ++toy.likes
      })
    })
    .then(res => res.json())
    .then(updatedToy => {
      p.innerText = `${updatedToy.likes} Likes`
    })
  })

  div.append(h2,img, p, btn)
  toyCollection.append(div)


  }

  newToyForm.addEventListener("submit", () => {
    event.preventDefault()

    // debugger
    let toyName = event.target[0].value
    let toyURL = event.target[1].value

    fetch("http://localhost:3000/toys", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        "name": toyName,
        "image": toyURL,
        "likes": 0
      })
    })
    .then(res => res.json())
    .then(newToy => {
      renderToy(newToy)
    })

    event.target.reset()
    toyForm.style.display = 'none'
  })

})
