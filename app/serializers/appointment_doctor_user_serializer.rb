class AppointmentDoctorUserSerializer < ActiveModel::Serializer
  attributes :id, :user, :doctor, :appointments

  belongs_to :doctor
  belongs_to :user
  has_many :appointments

end