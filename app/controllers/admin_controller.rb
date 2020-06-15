class AdminController < ApplicationController
    layout "admin"

    def home
        @workout_classes = WorkoutClass.all
    end
    
    def instructors
    end
end
