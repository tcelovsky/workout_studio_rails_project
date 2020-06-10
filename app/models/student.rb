class Student < ApplicationRecord
    has_many :workout_classes
    belongs_to :workout_studio
    has_many :workout_classes, through: :instructors
    has_secure_password
end
