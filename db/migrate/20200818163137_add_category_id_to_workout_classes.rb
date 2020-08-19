class AddCategoryIdToWorkoutClasses < ActiveRecord::Migration[6.0]
  def change
    add_column :workout_classes, :category_id, :integer
  end
end
