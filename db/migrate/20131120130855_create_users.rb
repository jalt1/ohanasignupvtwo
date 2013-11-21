class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.date :due_date
      t.string :birth_place
      t.string :doc_midwife
      t.string :baby_gender
      t.string :password_digest
    end
  end
end
