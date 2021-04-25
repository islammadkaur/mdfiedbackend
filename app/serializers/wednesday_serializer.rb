class WednesdaySerializer < ActiveModel::Serializer
  attributes :available, :start, :end, :appointment_doctor_users
  has_many :appointment_doctor_users
end
