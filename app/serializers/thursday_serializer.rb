class ThursdaySerializer < ActiveModel::Serializer
  attributes :available, :start, :end, :appointments
  has_many :appointment_doctor_users
  has_many :appointments, through: :appointment_doctor_users
end
