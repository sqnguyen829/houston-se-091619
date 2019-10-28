console.log("Hello World!")
// console.log("Hello World2!")
// // debugger
// console.log("Hello World3!")

let hTag = document.querySelector('h1')
hTag.innerText = "Super Happy New Year!!"

// debugger

let p = document.createElement('p')
p.innerText = "Something added on the screen"
document.body.append(p)

let div = document.querySelector('div')
let tag = "<h2>Houston-SE-091619</h2>"
div.innerHTML = tag 


// debugger
let pTags = document.querySelectorAll('p')
pTags.forEach(function(ptag){
    ptag.innerText = "Flatiron Students!!!"
})