class WorkoutClass < ApplicationRecord
    belongs_to :workout_studio
    has_many :students
    belongs_to :instructor
    belongs_to :student
end
