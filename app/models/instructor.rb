class Instructor < ApplicationRecord
    belongs_to :workout_studio
    has_many :workout_classes
end
