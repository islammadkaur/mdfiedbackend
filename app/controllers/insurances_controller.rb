class InsurancesController < ApplicationController

  def index
      insurances = Insurance.all
      render json: insurances.to_json(except: [:created_at, :updated_at])
  end

  def show
      insurance = Insurance.find(params[:id])
      render json: insurance.to_json(except: [:created_at, :updated_at])
  end

  def create
      insurance = Insurance.new(
          name: params[:name],
          clinic_id: params[:clinic_id]
          )
      if insurance.save
        render json: insurance
      else
        render json: { error: "Not all fields are filled out correctly" }
      end
  end

  def destroy
    insurance = Insurance.find(params[:id])
    insurance.delete
    render json: insurance
  end

end
