class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :meets_at
      t.string :day
      t.string :location

      t.timestamps null: false
    end
  end
end
