class CreateTalentClasses < ActiveRecord::Migration
  def change
    create_table :talent_classes do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.integer :school_id
      t.integer :class_id

      t.timestamps null: false
    end
    add_index :talent_classes, :student_id
    add_index :talent_classes, :teacher_id
    add_index :talent_classes, :school_id
    add_index :talent_classes, :class_id
  end
end
