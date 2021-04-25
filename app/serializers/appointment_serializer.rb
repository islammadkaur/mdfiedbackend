class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :booked, :date, :start, :end
  belongs_to :appointment_doctor_user

end
