class NewDoctorEmailMailer < ApplicationMailer

    def notify_doctor(doctor)
        @name = doctor.first_name

        mail to: doctor.email, 
            subject: "Welcome to Finate!"
    end

end
