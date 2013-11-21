class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.date :start_date
      t.date :end_date
      t.integer :category_id
      t.float :cost
      t.string :place
      t.time :start_time
      t.time :end_time
      t.string :teacher
    end
  end
end
