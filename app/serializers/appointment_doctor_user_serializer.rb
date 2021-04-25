class AppointmentDoctorUserSerializer < ActiveModel::Serializer
  attributes :id, :user, :doctor, :appointments

  belongs_to :doctor #, through: :appointment_doctor_users
  belongs_to :user #, through: :appointment_doctor_users
  has_many :appointments
  # has_many :doctors
  # has_one :user, through: :appointment_doctor_users
end