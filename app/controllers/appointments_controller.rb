class AppointmentsController < ApplicationController
    def index
        appointments = Appointment.all
        render json: appointments
    end

    def show
        appointment = Appointment.find(params[:id])
        render json: appointment
    end

    def create
        appointment = Appointment.new(appointment_params)
        if appointment.save
          render json: appointment
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    private

    def appointment_params
        params.permit(:booked, :date, :start, :end, :doctor_id, :user_id, :appointment_doctor_user_id)
    end   
end
