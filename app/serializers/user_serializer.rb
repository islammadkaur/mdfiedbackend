class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :email, :address, :city, :state, :zipcode

  has_many :appointment_doctor_users
  has_many :appointments, through: :appointment_doctor_users
  has_many :doctors, through: :appointment_doctor_users

  has_many :user_doctor_messages
  has_many :doctors, through: :user_doctor_messages
  has_many :messages, through: :user_doctor_messages

end
