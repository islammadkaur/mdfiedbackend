class UserDoctorMessageSerializer < ActiveModel::Serializer
  attributes :id, :user, :doctor, :message
  
  belongs_to :user
  belongs_to :doctor
  belongs_to :message
end
