class ClinicSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :address, :state, :city, :zip, :rating

  has_many :doctor_hospitals
  has_many :doctors, through: :doctor_hospitals

  # has_many :users
  has_many :clinics_insurances
  # has_many :insurances, through: :clinics_insurances
end
