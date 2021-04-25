class CreateAppointments < ActiveRecord::Migration[6.0]
    def change
      create_table :appointments do |t|
      t.boolean :booked, default: false
      t.datetime :date
      t.datetime :start
      t.datetime :end
      t.integer :doctor_id
      t.integer :user_id
      t.integer :appointment_doctor_user_id

      t.timestamps
    end
  end
end
