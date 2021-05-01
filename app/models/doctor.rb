class Doctor < ApplicationRecord
    has_secure_password
    belongs_to :clinic, optional: true

    has_many :doctor_hospitals
    has_many :clinics, through: :doctor_hospitals

    has_many :doctor_specialties
    has_many :specialties, through: :doctor_specialties

    has_many :appointment_doctor_users
    # has_many :users, through: :appointment_doctor_users
    has_many :appointments, through: :appointment_doctor_users

    has_many :user_doctor_messages
    has_many :users, through: :user_doctor_messages
    has_many :messages, through: :user_doctor_messages

    has_many :mondays
    has_many :tuesdays
    has_many :wednesdays
    has_many :thursdays
    has_many :fridays
    has_many :saturdays
    has_many :sundays

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, presence: true, length: {minimum: 6}
    validates :date_of_birth, presence: true
    validates :gender, inclusion: { in: %w(Male Female), presence: true}
    validates :specialty_id, presence: true
    validates :email, uniqueness: true

end
