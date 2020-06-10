class Instructor < ApplicationRecord
    belongs_to :workout_studio
    has_many :workout_classes
    has_secure_password

    validates :name, length: { minimum: 2 }  
    validates :email, uniqueness: true  
    validates :password, length: { in: 6..20 } 
    
end
