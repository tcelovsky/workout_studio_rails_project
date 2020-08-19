class WorkoutClass < ApplicationRecord
    belongs_to :instructor
    # belongs_to :student
    has_and_belongs_to_many :students
    # belongs_to :category
    
    scope :ordered, -> { order(date: :asc) }

    validates :name, presence: true
    validates :instructor, presence: true
    validates :date, presence: true
    validates :time, presence: true

    def instructor_name=(name)
        self.instructor = Instructor.find_or_create_by(name: name)
        # self.instructor.update(name)
	end

	def instructor_name
		self.instructor ? self.instructor.name : nil
    end
end
