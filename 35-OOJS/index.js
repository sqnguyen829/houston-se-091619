class Image{
    constructor(title,url){
        this.title = title
        this.url = url
    }

    render(){
        let p = document.createElement('p')
        // debugger
        p.innerText = this.title

        let i = document.createElement('img')
        i.src = this.url

        document.body.append(p,i)
    }
}

let imgForm = document.querySelector(".new-form")

imgForm.addEventListener("submit", () => {
    event.preventDefault()

    let title = event.target[0].value
    let url = event.target[1].value

    let img = new Image(title,url)
    img.render()

    event.target.reset()
})


class Person{
    constructor(name){
        this.name = name
    }
}

class Student extends Person{
    // constructor(name, age){
    //     super(name)
    //     this.age = age
    // }
    render(){
        let li = document.createElement('li')
        li.innerText = this.name+" I am a student!! "

        document.body.append(li)
    }
}


class Teacher extends Person{
    render(){
        let li = document.createElement('li')
        li.innerText = this.name+" I am a teacher!! "

        document.body.append(li)

    }
}

let taskForm = document.querySelector('.task-form')

taskForm.addEventListener("submit", () => {
    event.preventDefault()

    switch(event.target[1].value){
        case "teacher":
            // console.log("I am a teacher!!")
            let t = new Teacher(event.target[0].value)
            t.render()
            break
        case "student":
            // console.log("I am a student!!")
            let s = new Student(event.target[0].value)
            s.render()
            break
        default:
            console.log("Not a good choice!!")
    }
})