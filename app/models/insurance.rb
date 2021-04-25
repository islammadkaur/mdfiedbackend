class Insurance < ApplicationRecord
    has_many :clinics_insurances
    has_many :clinics, through: :clinics_insurances


    validates :name, presence: true
end
