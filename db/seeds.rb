# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DATA = {
  :workout_studio_keys =>
    ["name", "address"],
  :workout_studios => [
    ["Sweat", "300 Broadway"]
  ],
  :instructor_keys =>
   ["name", "email", "password_digest", "workout_studio_id"],
  :instructors => [
    ["Alice Park", "alice@sweat.com", "alicepassword", 1],
    ["Sam Newmann", "sam@sweat.com", "sampassword", 1]
  ],
  :workout_class_keys =>
   ["name", "date", "time", "workout_studio_id", "instructor_id", "student_id"],
  :workout_classes => [
    ["HIIT", "7/1/2020", "7:00", 1, 1, 1],
    ["Cardio", "7/1/2020", "12:00", 1, 1, 2],
    ["Upper Body", "7/5/2020", "8:00", 1, 2, 3],
    ["Abs", "7/6/2020", "13:00", 1, 2, 2]
  ],
  :student_keys =>
   ["name", "email", "password_digest", "workout_studio_id"],
  :students => [
    ["Jimmy", "jimmy@email.com", "jimmypassword", 1],
    ["Kate", "kate@email.com", "katepassword", 1],
    ["Alex", "alex@email.com", "alexpassword", 1]
  ],
}

def main
  make_workout_studios
  make_workout_classes
  make_instructors
  make_students
end

def make_workout_studios
  DATA[:workout_studios].each do |workout_studio|
    new_workout_studio = WorkoutStudio.new
    workout_studio.each_with_index do |attribute, i|
      new_workout_studio.send(DATA[:workout_studio_keys][i]+"=", attribute)
    end
    new_workout_studio.save
  end
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