class DoctorSpecialtiesController < ApplicationController
    def index
        joiners = DoctorSpecialty.all
        render json: joiners
    end

    def show
        joiner = DoctorSpecialty.find(params[:id])
        render json: joiner
    end

    def create
        joiner = DoctorSpecialty.new(doctor_specialty_params)
        if joiner.save
          render json: joiner
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    private

    def doctor_specialty_params
        params.permit(:doctor_id, :specialty_id)
    end
end
