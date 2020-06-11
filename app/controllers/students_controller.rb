class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    private
    def student_params
        params.require(:student).permit(:name, :email, :password, :password_confirmation)
    end

    def set_student
        @student = Student.find(params[:id])
    end

end
