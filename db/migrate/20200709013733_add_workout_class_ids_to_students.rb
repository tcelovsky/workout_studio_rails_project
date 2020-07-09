class AddWorkoutClassIdsToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :workout_class_id, :integer
  end
end
