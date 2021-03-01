class InsurancesController < ApplicationController

        def index
            insurances = Insurance.all
            render json: insurances
        end
        def show
            insurance = Insurance.find(params[:id])
            render json: insurance
        end
    
        def create
            insurance = Insurance.new(
                name: params[:name],
                hospital_id: params[:hospital_id]
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
