class WorkoutClass < ApplicationRecord
    belongs_to :instructor
    belongs_to :student
    

    # validates :name, presence: true
    # validates :instructor, presence: true
    # validates :date, presence: true
    # validates :time, presence: true

    def instructor_name=(name)
		self.instructor = Instructor.find_or_create_by(name: name)
	end

	def instructor_name
		self.instructor ? self.instructor.name : nil
  end
end
