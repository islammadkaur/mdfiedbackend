class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: clinics
    end

    def show
        clinic = Clinic.find(params[:id])
        render json: clinic
    end

    def create

        clinic = Clinic.new(
            name: params[:name], 
            address: params[:address], 
            state: params[:state], 
            city: params[:city], 
            zip: params[:zip]
            )
        if clinic.save
          render json: clinic
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end  

    def destroy
        clinic = Clinic.find(params[:id])
        clinic.delete
      render json: clinic     
    end

    def edit
        clinic = Clinic.find(params[:id])
    end
    
    def update
        clinic = Clinic.find(params[:id])
        if clinic.update(
            rating: params[:rating]          
            )
            render json: clinic
        else
            render json: { error: "Not all fields are filled out correctly" }
        end
    end
end
