class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :email
      t.string :address
      t.string :password_digest
      t.string :gender
      t.time :timeslot
      t.integer :specialty_id

      t.timestamps
    end
  end
end
