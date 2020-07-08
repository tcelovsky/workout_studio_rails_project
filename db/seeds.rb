# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

instructors = Instructor.create!([
  {name: "Alice Park", email: "alice@sweat.com", password: "alicepassword", bio: "Alice has been a trainer for two years, she is available for one-on-one sessions when she is not teaching group classes."},
  {name: "Sam Newmann", email: "sam@sweat.com", password: "sampassword", bio: "Sam has been at Sweat for 5 years. He loves sharing his passion for fitness with our students."}
])

workout_classes = WorkoutClass.create!([
  {name: "HIIT", date: "7/12/2020", time: "7:00AM", description:"HIIT, or high-intensity interval training, is a training technique in which you give all-out, one hundred percent effort through quick, intense bursts of exercise, followed by short, sometimes active, recovery periods. This type of training gets and keeps your heart rate up and burns more fat in less time.", instructor_id: 1, student_id: 1},
  {name: "Cardio", date: "7/12/2020", time: "12:00PM", description:"Cardio exercise simply means that you're doing a rhythmic activity that raises your heart rate into your target heart rate zone, the zone where you'll burn the most fat and calories.", instructor_id: 1, student_id: 2},
  {name: "Upper Body", date: "7/15/2020", time: "8:00AM", description:"Upper body strength training exercises target five major parts of the upper body, namely, the chest, shoulders, triceps, biceps and the back. They enhance the strength of muscles, joints and bones for better movement and flexibility.", instructor_id: 2, student_id: 3},
  {name: "Abs", date: "7/16/2020", time: "13:00PM", description:"Abdominal exercises are useful for building the abdominal muscles. This is useful for improving performance with certain sports, back pain, and for withstanding abdominal impacts.", instructor_id: 2, student_id: 2}
])

students = Student.create!([
  {name: "Jimmy", email: "jimmy@email.com", password: "jimmypassword"},
  {name: "Kate", email: "kate@email.com", password: "katepassword"},
  {name: "Alex", email: "alex@email.com", password: "alexpassword"}
])
