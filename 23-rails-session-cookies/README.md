# Rails Quest
We have a pre-built trivia app which presents the user with questions in succession, and allows them to answer.
We can check in our controller whether the user answered correctly or not, but how can we get the server to 'remember' how many questions a user has answered correctly for as long as they are on the site?

## Deliverables
* Add a feature which displays the number of questions a user has answered correctly
* Add a message which tells the user whether or not they got the last answer correct

## External Resources:

- [Rails Docs on Sessions](https://guides.rubyonrails.org/security.html#sessions)
- [Wiki Page on HTTP Headers](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields)


# Session and Cookies

### Learning Goals
* Explain the stateless nature of HTTP
* Explain that session is built on cookies
* Implementing Session Variables
* Implementing Flash Variables

## Explain the stateless nature of HTTP

* The problem of remembering a users score
* The request response cycle
* How each HTTP request is treated as separate

## Explain that session is built on cookies

* Rails session method helps solve this problem by (Sentence)
```ruby
 def create
        if session[:number_correct] == nil
            session[:number_correct] = 0
        end
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            session[:number_correct] = session[:number_correct] + 1
            puts "Correct"
        else
            puts "Incorrect"
        end
        puts "Answered Correctly: #{session[:number_correct]}"
        redirect_to '/random-question'
end
```
* Application tab show cookies
* How cookies are part of the headers with the help of cycle
* Cookies carry are session variables from request to request


## Implementing Session Variables

* How our :number_correct is persisted in the session(review)
* How to use the session variable in the view:
```ruby
...
    before_action :define_question, :define_response, :define_number_correct
    ...
    def  define_number_correct
        @number_correct = session[:number_correct]
    end
    ...
```


## Implementing Flash Variables

* Problem with session message variable (Refresh)
* Introduce flash
* Show message in the view
