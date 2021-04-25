class Thursday < ApplicationRecord
  belongs_to :doctor, optional: true
  has_many :appointment_doctor_users
  has_many :appointments, through: :appointment_doctor_users
end
