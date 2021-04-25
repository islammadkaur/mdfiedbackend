class NewDoctorEmailMailer < ApplicationMailer

    def notify_doctor(doctor)
        @name = doctor.first_name

        mail to: doctor.email, 
            subject: "Thank you for joining Mdfied!"
    end

end
