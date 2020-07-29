class InstructorsController < ApplicationController
    layout "admin"
    before_action :set_instructor, only: [:show, :edit, :update, :destroy]

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instructor_params)
        if @instructor.save
            redirect_to admin_show_instructor_path(@instructor)
        else render :new
        end
    end

    def index 
        @instructors = Instructor.all
    end

    def show
        render :layout => "application"
    end

    def edit
    end
    
    def update
        @instructor.update(instructor_params)
        if @instructor.save
            redirect_to admin_show_instructor_path(@instructor)
        else render :edit
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
        params.require(:instructor).permit(:name, :email, :password, :password_confirmation, :admin, :bio)
    end
end
