class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :state
      t.string :city
      t.integer :zip
      t.integer :rating
      t.string :password_digest

      t.timestamps
    end
  end
end
