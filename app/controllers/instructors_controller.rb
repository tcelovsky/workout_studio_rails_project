class InstructorsController < ApplicationController
    before_action :set_instructor, only: [:show, :edit, :update, :destroy]

    def index
        @instructors = Instructor.all
    end

    private
    def set_instructor
        @instructor = Instructor.find_by(id: params[:id])
    end

    def instructor_params
        params.require(:instructor).permit(:name, :email, :password, :password_confirmation, :admin)
    end
end
