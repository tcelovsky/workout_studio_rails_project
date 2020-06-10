class Instructor < ApplicationRecord
    belongs_to :workout_studio
    has_many :workout_classes
    has_secure_password
end
