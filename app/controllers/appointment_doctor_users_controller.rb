class AppointmentDoctorUsersController < ApplicationController
    def index
        joiners = AppointmentDoctorUser.all
        render json: joiners
    end

    def show
        # monday = Monday.find(params[:id])
        joiner = AppointmentDoctorUser.find(params[:id])
        render json: joiner
    end

    def create
        joiner = AppointmentDoctorUser.new(appointment_doctor_user_params)
        if joiner.save
          render json: joiner
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    private

    def appointment_doctor_user_params
        params.permit(:user_id, :doctor_id, :appointment_id, :monday_id, :tuesday_id)
    end
end
