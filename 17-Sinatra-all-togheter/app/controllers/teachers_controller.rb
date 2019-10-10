class TeachersController < ApplicationController

    get '/teachers' do
        @teachers = Teacher.all
        erb :'teachers/index'
    end

    get '/teachers/new' do
        @students = Student.all
        erb :'teachers/new'
    end

    get '/teachers/:id' do
        @teacher = Teacher.find(params[:id])
        erb :'teachers/show'
    end
    
    post '/teachers' do
        # binding.pry
        if !params[:teacher][:name].empty?
            teacher = Teacher.create(name: params[:teacher][:name])
        end

        courses_names = []

        params[:course][:name].each do |course|
            unless course.empty?
                courses_names << course
            end
        end

        # binding.pry
        i = 0
        params[:teacher][:students].each do |student_id|
            # index = params[:teacher][:students].index(student_id)

            Course.create(name:courses_names[i] , teacher_id: teacher.id, student_id: student_id)
            i += 1
        end

        unless params[:student][:name].empty?
           s = Student.create(params[:student])
        end

        unless params[:teacher][:student][:course].empty?
            Course.create(name:params[:teacher][:student][:course], teacher_id: teacher.id, student_id: s.id)
        end

        redirect "/teachers/#{teacher.id}"

    
    end

   
end