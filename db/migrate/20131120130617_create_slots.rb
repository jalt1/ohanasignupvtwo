class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.integer :user_id
      t.integer :course_id
      t.boolean :paid
      t.boolean :available, :default => true
    end
  end
end
