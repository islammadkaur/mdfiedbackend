class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :state
      t.string :image, :default => 'https://s3-us-west-2.amazonaws.com/care-papers-prod-images/hero-5ad3abe5f8caad06f126436f-logo%20-%20JPG.png'
      t.string :city
      t.integer :zip
      t.integer :rating
      t.string :password_digest


      t.timestamps
    end
  end
end
