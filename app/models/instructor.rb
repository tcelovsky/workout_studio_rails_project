class Instructor < ApplicationRecord
    has_many :workout_classes
    has_many :students, through: :workout_classes
    has_secure_password

    validates :name, length: { minimum: 2 }  
    validates :email, uniqueness: true  
    validates :password, length: { in: 6..20 } 
    
end
