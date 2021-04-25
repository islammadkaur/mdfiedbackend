class CreateDoctorSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_specialties do |t|
      t.references :doctor
      t.references :specialty

      t.timestamps
    end
  end
end
