class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = params[:id]
            redirect_to student_path(@student)
        else render :new
        end
    end

    def show
    end

    def edit
    end
    
    def update
    end

    def destroy
    end

    private
    def student_params
        params.require(:student).permit(:name, :email, :password, :password_confirmation)
    end

    def set_student
        @student = Student.find_by(id: params[:id])
    end

end
