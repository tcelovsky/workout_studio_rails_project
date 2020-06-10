class WorkoutStudio < ApplicationRecord
    has_many :workout_classes
    has_many :instructors
    has_many :students, through: :workout_classes
end
