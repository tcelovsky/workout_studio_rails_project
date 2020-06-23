class CreateWorkoutClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_classes do |t|
      t.string :name
      t.string :date
      t.string :time
      t.text :description
      t.integer :instructor_id
      t.integer :student_id

      t.timestamps
    end
  end
end
