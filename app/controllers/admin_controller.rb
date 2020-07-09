class AdminController < ApplicationController
    layout "admin"

    def home
    end
    
    def instructors
        @instructors = Instructor.all
    end

    def workout_classes
        @workout_classes = WorkoutClass.all
    end

    def login
    end

    def show_instructor
        @instructor = Instructor.find_by(id: params[:id])
    end

    private 
    
    def logged_in?
        session[:instructor_id]
    end
end
