class CreateDoctorHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_hospitals do |t|
      t.references :doctor
      t.references :clinic

      t.timestamps
    end
  end
end
