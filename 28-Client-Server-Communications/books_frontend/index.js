function addBook(book) {
  const book_list = document.querySelector("#book-list");
  const div = makeBookCard(book);
  book_list.append(div);
}

function makeBookCard(book) {
  const div = document.createElement("div");
  div.className = "card";

  const img = document.createElement("img");
  img.src = book.img;

  const h3 = document.createElement("h3");
  h3.textContent = book.title;

  const p = document.createElement("p");
  p.textContent = book.author;

  //add all elements to div
  div.append(img, h3, p);
  // div.append(h3);
  // div.append(p);

  return div;
}

function showBooks(bookArray) {
  bookArray.map(book => {
    addBook(book);
  });
}

// what happens when books isn't defined?
// showBooks(books);


// fetch('http://ron-swanson-quotes.herokuapp.com/v2/quotes')
// .then(function(res){ return res.json()})
// .then(function(data){console.log(data)})

fetch("http://localhost:3000/books")
.then(function(res){return res.json()})
.then(function(booksArray){
  showBooks(booksArray)
})

console.log("TEST")

const form = document.querySelector("#new-book")
form.addEventListener("submit", function(){
  event.preventDefault()
  // debugger
  let title = event.target[0].value
  let author = event.target[1].value
  let url = event.target[2].value

  fetch("http://localhost:3000/books",{
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body:JSON.stringify({
      "title": title,
      "author": author,
      "img": url
    }) 
  })
  .then(function(res){
    return res.json()
  })
  .then(function(book){
    addBook(book)
  })

  event.target.reset()
})
