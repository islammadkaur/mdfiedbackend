class Clinic < ApplicationRecord
    has_secure_password
    
    has_many :doctor_hospitals
    has_many :doctors, through: :doctor_hospitals

    has_many :clinics_insurances
    has_many :insurances, through: :clinics_insurances

    validates :name, presence: true, length: {minimum: 3}, uniqueness: { case_sensitive: false }
    validates :address, presence: true
    validates :state, presence: true
    validates :city, presence: true
    validates :zip, presence: true
end
