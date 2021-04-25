class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :image, :default => 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'
      t.date :date_of_birth
      t.string :email
      t.string :address
      t.string :password_digest

      t.timestamps
    end
  end
end
