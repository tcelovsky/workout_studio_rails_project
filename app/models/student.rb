class Student < ApplicationRecord
    has_many :workout_classes
    has_many :instructors, through: :workout_classes
    has_secure_password

    # validates :name, length: { minimum: 2 }
    # validates :email, uniqueness: true
    # validates :password, length: { in: 6..20 }
    # validates :password, confirmation: true
    # validates :password_confirmation, presence: true

    def current_student
        self.id = sessions[:student_id]
    end
end
