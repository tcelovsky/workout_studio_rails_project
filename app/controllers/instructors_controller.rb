class InstructorsController < ApplicationController
    layout "admin"
    before_action :set_instructor, only: [:show, :edit, :update, :destroy]

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instructor_params)
        if @instructor.save
            redirect_to instructor_path(@instructor)
        else render :new
        end
    end

    def show
    end

    def edit
    end
    
    def update
        if @instructor.save
            redirect_to instructor_path(@instructor)
        else render :new
        end
    end

    def destroy
        @instructor.destroy
        redirect_to admin_instructors_path
      end

    private
    def set_instructor
        @instructor = Instructor.find_by(id: params[:id])
    end

    def instructor_params
        params.require(:instructor).permit(:name, :email, :password, :password_confirmation, :admin)
    end
end
