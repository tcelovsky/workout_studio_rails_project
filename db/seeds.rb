# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructors = Instructor.create!([
  {name: "Alice Park", email: "alice@sweat.com", password_digest: "alicepassword"},
  {name: "Sam Newmann", email: "sam@sweat.com", password_digest: "sampassword"}
])

workout_classes = WorkoutClass.create!([
  {name: "HIIT", date: "7/1/2020", time: "7:00AM", description:"HIIT, or high-intensity interval training, is a training technique in which you give all-out, one hundred percent effort through quick, intense bursts of exercise, followed by short, sometimes active, recovery periods. This type of training gets and keeps your heart rate up and burns more fat in less time.", instructor_id: 1, student_id: 1},
  {name: "Cardio", date: "7/1/2020", time: "12:00PM", description:"Cardio exercise simply means that you're doing a rhythmic activity that raises your heart rate into your target heart rate zone, the zone where you'll burn the most fat and calories.", instructor_id: 1, student_id: 2},
  {name: "Upper Body", date: "7/5/2020", time: "8:00AM", description:"Upper body strength training exercises target five major parts of the upper body, namely, the chest, shoulders, triceps, biceps and the back. They enhance the strength of muscles, joints and bones for better movement and flexibility.", instructor_id: 2, student_id: 3},
  {name: "Abs", date: "7/6/2020", time: "13:00PM", description:"Abdominal exercises are useful for building the abdominal muscles. This is useful for improving performance with certain sports, back pain, and for withstanding abdominal impacts.", instructor_id: 2, student_id: 2}
])

students = Student.create!([
  {name: "Jimmy", email: "jimmy@email.com", password_digest: "jimmypassword"},
  {name: "Kate", email: "kate@email.com", password_digest: "katepassword"},
  {name: "Alex", email: "alex@email.com", password_digest: "alexpassword"}
])


# DATA = {
#   :instructor_keys =>
#    ["name", "email", "password_digest"],
#   :instructors => [
#     ["Alice Park", "alice@sweat.com", "alicepassword"],
#     ["Sam Newmann", "sam@sweat.com", "sampassword"]
#   ],
#   :workout_class_keys =>
#    ["name", "date", "time", "description", "instructor_id", "student_id"],
#   :workout_classes => [
#     ["HIIT", "7/1/2020", "7:00AM", "HIIT, or high-intensity interval training, is a training technique in which you give all-out, one hundred percent effort through quick, intense bursts of exercise, followed by short, sometimes active, recovery periods. This type of training gets and keeps your heart rate up and burns more fat in less time.", 1, 1],
#     ["Cardio", "7/1/2020", "12:00PM", "Cardio exercise simply means that you're doing a rhythmic activity that raises your heart rate into your target heart rate zone, the zone where you'll burn the most fat and calories.", 1, 2],
#     ["Upper Body", "7/5/2020", "8:00AM", "Upper body strength training exercises target five major parts of the upper body, namely, the chest, shoulders, triceps, biceps and the back. They enhance the strength of muscles, joints and bones for better movement and flexibility.", 2, 3],
#     ["Abs", "7/6/2020", "13:00PM", "Abdominal exercises are useful for building the abdominal muscles. This is useful for improving performance with certain sports, back pain, and for withstanding abdominal impacts.", 2, 2]
#   ],
#   :student_keys =>
#    ["name", "email", "password_digest"],
#   :students => [
#     ["Jimmy", "jimmy@email.com", "jimmypassword"],
#     ["Kate", "kate@email.com", "katepassword"],
#     ["Alex", "alex@email.com", "alexpassword"]
#   ],
# }

# def main
#   make_workout_classes
#   make_instructors
#   make_students
# end

# def make_workout_classes
#     DATA[:workout_classes].each do |workout_class|
#       new_workout_class = WorkoutClass.new
#       workout_class.each_with_index do |attribute, i|
#         new_workout_class.send(DATA[:workout_class_keys][i]+"=", attribute)
#       end
#       new_workout_class.save
#     end
# end

# def make_instructors
#     DATA[:instructors].each do |instructor|
#       new_instructor = Instructor.new
#       instructor.each_with_index do |attribute, i|
#         new_instructor.send(DATA[:instructor_keys][i]+"=", attribute)
#       end
#       new_instructor.save
#     end
# end

# def make_students
#     DATA[:students].each do |student|
#       new_student = Student.new
#       student.each_with_index do |attribute, i|
#         new_student.send(DATA[:student_keys][i]+"=", attribute)
#       end
#       new_student.save
#     end
# end

# main


# "HIIT, or high-intensity interval training, is a training technique in which you give all-out, one hundred percent effort through quick, intense bursts of exercise, followed by short, sometimes active, recovery periods. This type of training gets and keeps your heart rate up and burns more fat in less time."
# "Cardio exercise simply means that you're doing a rhythmic activity that raises your heart rate into your target heart rate zone, the zone where you'll burn the most fat and calories."
# "Upper body strength training exercises target five major parts of the upper body, namely, the chest, shoulders, triceps, biceps and the back. They enhance the strength of muscles, joints and bones for better movement and flexibility."
# "Abdominal exercises are useful for building the abdominal muscles. This is useful for improving performance with certain sports, back pain, and for withstanding abdominal impacts."