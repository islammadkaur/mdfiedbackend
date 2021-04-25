class ClinicsInsurancesController < ApplicationController
    def index
        joiners = ClinicsInsurance.all
        render json: joiners
    end

    def show
        joiner = ClinicsInsurance.find(params[:id])
        render json: joiner
    end

    def create
        joiner = ClinicsInsurance.new(clinic_insurance_params)
        if joiner.save
          render json: joiner
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    private

    def clinic_insurance_params
        params.permit(:insurance_id, :clinic_id)
    end
end
