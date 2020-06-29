class CreateInstructors < ActiveRecord::Migration[6.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :admin, default: :true

      t.timestamps
    end
  end
end
