class AppointmentDoctorUser < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :doctor, optional: true
    has_many :appointments
    
    belongs_to :monday, optional: true
    belongs_to :tueday, optional: true
    belongs_to :wednesday, optional: true
    belongs_to :thursday, optional: true
    belongs_to :friday, optional: true
    belongs_to :saturday, optional: true
    belongs_to :sunday, optional: true

    has_many :users


end

