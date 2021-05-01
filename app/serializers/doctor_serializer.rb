class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :date_of_birth, :email, :address, :gender, :image

  has_many :doctor_specialties

  has_many :mondays
  has_many :tuesdays
  has_many :wednesdays
  has_many :thursdays
  has_many :fridays
  has_many :saturdays
  has_many :sundays

  has_many :specialties



  has_many :user_doctor_messages
  has_many :users, through: :user_doctor_messages
  has_many :messages, through: :user_doctor_messages

end
