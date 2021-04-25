class Appointment < ApplicationRecord
    belongs_to :appointment_doctor_user, optional: true



    validate :available_day, on: :create
    def available_day
        monday = Monday.find(params[:available])
        if monday === false && Appointment.date.monday?
            errors.add(:date, "Doctor isn't available on mondays")
        end

        if self.date.monday? && Doctor.monday.available?
            
        end 

    end

end