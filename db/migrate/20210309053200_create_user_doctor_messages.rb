class CreateUserDoctorMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_doctor_messages do |t|
      t.references :user
      t.references :doctor
      t.references :message

      t.timestamps
    end
  end
end
