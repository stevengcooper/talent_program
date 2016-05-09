class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :meet_ad
      t.integer :student_id
      t.integer :parent_id
      t.string :teacher_id
      t.string :location

      t.timestamps null: false
    end
    add_index :meetings, :student_id
    add_index :meetings, :parent_id
    add_index :meetings, :teacher_id
  end
end
