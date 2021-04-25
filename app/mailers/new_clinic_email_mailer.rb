class NewClinicEmailMailer < ApplicationMailer

    def notify_user(clinic)
        @name = clinic.name

        mail to: clinic.email, 
            subject: "Thank you for joining Mdfied!"
    end

end
