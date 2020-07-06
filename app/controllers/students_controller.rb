class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update]

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = @student.id
            redirect_to student_path(@student)
        else render :new
        end
    end

    def show
    end

    def edit
    end
    
    def update
        if @student.save
            session[:student_id] = @student.id
            redirect_to student_path(@student)
        else render :new
        end
    end

    private
    def student_params
        params.require(:student).permit(:name, :email, :password, :password_confirmation, :workout_class_id)
    end

    def set_student
        @student = Student.find_by(id: session[:student_id])
    end

end
