class User < ApplicationRecord
    has_secure_password
    belongs_to :clinic, optional: true
    has_many :appointment_doctor_users
    has_many :appointments, through: :appointment_doctor_users
    has_many :doctors, through: :appointment_doctor_users

    has_many :user_doctor_messages
    has_many :doctors, through: :user_doctor_messages
    has_many :messages, through: :user_doctor_messages

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, presence: true, length: {minimum: 6}
    validates :date_of_birth, presence: true
    validates :email, uniqueness: true
    validates :zipcode, presence: true, length: {is: 5}
end
