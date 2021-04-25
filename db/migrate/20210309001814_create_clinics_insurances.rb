class CreateClinicsInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics_insurances do |t|
      t.references :clinic
      t.references :insurance
      t.timestamps
    end
  end
end
