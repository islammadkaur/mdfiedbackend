class DoctorHospitalsController < ApplicationController
    def index
        joiners = DoctorHospital.all
        render json: joiners
    end

    def show
        joiner = DoctorHospital.find(params[:id])
        render json: joiner
    end

    def create
        joiner = DoctorHospital.new(doctor_hospital_params)
        if joiner.save
          render json: joiner
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    private

    def doctor_hospital_params
        params.permit(:doctor_id, :clinic_id)
    end
end
