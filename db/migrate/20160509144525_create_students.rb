class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :teacher_id
      t.integer :parent_id
      t.integer :school_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.datetime :iep_date
      t.integer :exceptionality_id
      t.string :exceptionality_type

      t.timestamps null: false
    end
    add_index :students, :teacher_id
    add_index :students, :parent_id
    add_index :students, :school_id
  end
end
