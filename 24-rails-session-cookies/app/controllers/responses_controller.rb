class ResponsesController < ApplicationController

    before_action :define_question, :define_response, :number_correct, :display_message


    def new

    end

    def number_correct
        @number_correct = session[:number_correct]
    end

    def display_message
        @message = flash[:message]
    end
    
    def define_question
        @question = Question.order("RANDOM()").limit(1)[0]
    end

    def define_response
        @questionResponse = Response.new({ question: @question })
    end

    def create
        if session[:number_correct] == nil
            session[:number_correct] = 0
        end
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            session[:number_correct] = session[:number_correct] + 1
            flash[:message] = "Correct"
        else
            flash[:message] =  "Incorrect"
        end
        puts "Answered Correctly: #{session[:number_correct]}"
        # byebug
        redirect_to '/random-question'
    end

    def response_params
        params.require(:response).permit(:answer_id, :question_id)
    end

end
