class WorkoutClass < ApplicationRecord
    belongs_to :workout_studio
    has_many :students
    belongs_to :instructor
    belongs_to :student

    validates :name, presence: true
    validates :instructor, presence: true
    validates :date, presence: true
    validates :time, presence: true

end