document.addEventListener("DOMContentLoaded", function(){
    const btn = document.querySelector('#first-btn')

    btn.addEventListener("click", function(){  
        console.log("HIII FERNANDOOOOOO!!!! ")
    })

    const form = document.querySelector('#comment-form')
    form.addEventListener("submit", function() {
        event.preventDefault()
        // debugger
        // console.log(event.target[0].value)
        const div = document.querySelector('#comments-container')

        const p = document.createElement('p')
        p.innerText = event.target[0].value
        div.append(p)

        event.target.reset()
    })

    const clearBtn = document.querySelector('#clear-btn')

    clearBtn.addEventListener("click", function(){
        form.reset()
    })

    const parentDiv = document.querySelector('#helicopter-parent')

    parentDiv.addEventListener("click", function(){
        // debugger

        // if(event.target.dataset.name === 'alert'){
        //     alert("I am from alert button")
        // }
        //  else if (event.target.dataset.name === 'log') {
        //     console.log('HI')
        // } else if (event.target.dataset.name === 'error') {
        //     console.error('HI')
        // }

        //OR you can use switch statement 

        switch(event.target.dataset.name){
            case "alert":
                alert("I am from alert button")
                break
            case "log":
                console.log('HI')
                break
            case "error":
                console.error('HI')
                break
            default:
                console.log("wrong click")
        }
    })
})





