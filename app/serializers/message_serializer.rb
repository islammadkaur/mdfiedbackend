class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message

    has_many :user_doctor_messages
    has_many :doctors, through: :user_doctor_messages
    has_many :users, through: :user_doctor_messages
end
