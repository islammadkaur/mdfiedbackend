class Sunday < ApplicationRecord
  belongs_to :doctor, optional: true
  has_many :appointment_doctor_users
end
