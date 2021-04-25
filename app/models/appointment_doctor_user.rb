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

    # has_many :appointment_doctor_users
    has_many :users

    # def monday
        
    # end

    # def tuesday

    # end

    # def wednesday

    # end

    # def thursday

    # end

    # def friday

    # end

    # def saturday

    # end

    # def sunday

    # end

end

