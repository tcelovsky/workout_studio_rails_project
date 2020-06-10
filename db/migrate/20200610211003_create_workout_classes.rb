class CreateWorkoutClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_classes do |t|

      t.timestamps
    end
  end
end
