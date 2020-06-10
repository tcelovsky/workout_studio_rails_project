class CreateWorkoutStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_studios do |t|

      t.timestamps
    end
  end
end
