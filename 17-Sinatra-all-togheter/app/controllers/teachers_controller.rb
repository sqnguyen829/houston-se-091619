class TeachersController < ApplicationController

    get '/teachers' do
        @teachers = Teacher.all
        erb :'teachers/index'
    end

    get '/teachers/new' do
        erb :'teachers/new'
    end

    get '/teachers/:id' do
        @teacher = Teacher.find(params[:id])
        erb :'teachers/show'
    end
    
    post '/teachers' do
    
    end

   
end