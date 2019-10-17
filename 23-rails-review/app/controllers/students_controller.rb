class StudentsController < ApplicationController

        def index
            @students = Student.all
        end
    
        def show
            @student = Student.find(params[:id])
        end
    
        def new
            @student = Student.new
            @instructors = Instructor.all
        end
        
        def edit
            @student = Student.find(params[:id])
            @instructors = Instructor.all
        end
    
        def create
            @student = Student.new(student_params)
            if @student.valid? 
                @student.save
                redirect_to student_path(@student)
            else
                flash[:error] = @student.errors.full_messages
                redirect_to new_student_path
            end
        end
    
        def update
            @student = Student.find(params[:id])
            @student.update(student_params)
            redirect_to student_path(@student)
        end
    
        def destroy
            @student = Student.find(params[:id])
            @student.destroy
            redirect_to students_path
        end
    
        private
        def student_params
            params.require(:student).permit(:name, :age, :major, :instructor_id)
        end
    
end
