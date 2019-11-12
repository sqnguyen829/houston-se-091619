document.addEventListener("DOMContentLoaded", function() {
    const ul = document.querySelector("#list")
    const div = document.querySelector("#show-panel")

    fetch("http://localhost:3000/books")
    .then(res => res.json())
    .then(books => {
        books.forEach(book => listBook(book))
    })

    function listBook(book){
        let li = document.createElement('li')
        li.innerText = book.title

        li.addEventListener("click", () => {
            div.innerHTML = ""
            let h3 = document.createElement('h3')
            h3.innerText = book.title

            let img = document.createElement('img')
            img.src = book.img_url

            let p = document.createElement('p')
            p.innerText = book.description

            div.append(h3,img,p)

            let newDiv = document.createElement('div')

            book.users.forEach(user => {
                let h4 = document.createElement('h4')
                h4.innerText = user.username

                newDiv.append(h4)
            })

            let btn = document.createElement('button')
            btn.innerText = "Read Book"

            btn.addEventListener("click", () => {

                book.users.push({"id":1, "username":"pouros"})

                fetch(`http://localhost:3000/books/${book.id}`,{
                    method: "PATCH",
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        users: book.users
                    })
                })
                .then(res => res.json())
                .then(updatedBook => {
                    let newAddedUser = document.createElement('h4')

                    // let lastUserIndex = updatedBook.users.length-1
                    // let lastUser = updatedBook.users[lastUserIndex]

                    // newAddedUser.innerText = lastUser.username
                    newAddedUser.innerText = "pouros"

                    newDiv.append(newAddedUser)
                })
            })

            div.append(newDiv, btn)

        })

        ul.append(li)
    }




});
