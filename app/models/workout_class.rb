class WorkoutClass < ApplicationRecord
    belongs_to :instructor
    belongs_to :student
    has_many :students

    # validates :name, presence: true
    # validates :instructor, presence: true
    # validates :date, presence: true
    # validates :time, presence: true

end
