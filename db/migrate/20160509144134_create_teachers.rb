class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :teacher_type
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
