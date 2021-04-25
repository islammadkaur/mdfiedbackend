class DoctorHospitalSerializer < ActiveModel::Serializer
  attributes :id, :doctor

  belongs_to :clinic
  belongs_to :doctor
end
