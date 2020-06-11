# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DATA = {
  :instructor_keys =>
   ["name", "email", "password_digest"],
  :instructors => [
    ["Alice Park", "alice@sweat.com", "alicepassword"],
    ["Sam Newmann", "sam@sweat.com", "sampassword"]
  ],
  :workout_class_keys =>
   ["name", "date", "time", "instructor_id", "student_id"],
  :workout_classes => [
    ["HIIT", "7/1/2020", "7:00", 1, 1],
    ["Cardio", "7/1/2020", "12:00", 1, 2],
    ["Upper Body", "7/5/2020", "8:00", 2, 3],
    ["Abs", "7/6/2020", "13:00", 2, 2]
  ],
  :student_keys =>
   ["name", "email", "password_digest"],
  :students => [
    ["Jimmy", "jimmy@email.com", "jimmypassword"],
    ["Kate", "kate@email.com", "katepassword"],
    ["Alex", "alex@email.com", "alexpassword"]
  ],
}

def main
  make_workout_classes
  make_instructors
  make_students
end

def make_workout_classes
    DATA[:workout_classes].each do |workout_class|
      new_workout_class = WorkoutClass.new
      workout_class.each_with_index do |attribute, i|
        new_workout_class.send(DATA[:workout_class_keys][i]+"=", attribute)
      end
      new_workout_class.save
    end
end

def make_instructors
    DATA[:instructors].each do |instructor|
      new_instructor = Instructor.new
      instructor.each_with_index do |attribute, i|
        new_instructor.send(DATA[:instructor_keys][i]+"=", attribute)
      end
      new_instructor.save
    end
end

def make_students
    DATA[:students].each do |student|
      new_student = Student.new
      student.each_with_index do |attribute, i|
        new_student.send(DATA[:student_keys][i]+"=", attribute)
      end
      new_student.save
    end
end

main