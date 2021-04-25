class CreateAppointmentDoctorUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :appointment_doctor_users do |t|
      t.references :appointment
      t.references :doctor
      t.references :user
      t.references :monday
      t.references :tuesday
      t.references :wednesday
      t.references :thursday
      t.references :friday
      t.references :saturday
      t.references :sunday

      t.timestamps
    end
  end
end
