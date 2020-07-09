class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :students, :workout_classes do |t|
      t.index [:student_id, :workout_class_id], { name: :student_class_index }
      # t.index [:workout_class_id, :student_id]
    end
  end
end
