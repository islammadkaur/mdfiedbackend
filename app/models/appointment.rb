class Appointment < ApplicationRecord
    belongs_to :appointment_doctor_user, optional: true

end