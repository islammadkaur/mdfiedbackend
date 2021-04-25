class Message < ApplicationRecord
    # belongs_to :user_doctor_message
    has_many :user_doctor_messages
    has_many :doctors, through: :user_doctor_messages
    has_many :users, through: :user_doctor_messages


    validates :message, presence: true, length: { minimum: 1 }
    
    
end
