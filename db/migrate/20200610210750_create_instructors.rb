class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :workout_studio_id

      t.timestamps
    end
  end
end
