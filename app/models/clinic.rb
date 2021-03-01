class Clinic < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}, uniqueness: { case_sensitive: false }
    validates :address, presence: true, length: {minimum: 3}
    validates :state, presence: true, length: {minimum: 2}
    validates :city, presence: true, length: {minimum: 3}
    validates :zip, presence: true, length: { is: 5 }
end
