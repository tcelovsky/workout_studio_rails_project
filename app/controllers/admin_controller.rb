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
end
