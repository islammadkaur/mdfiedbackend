class SpecialtiesController < ApplicationController
    def index
        specialties = Specialty.all
        render json: specialties     
    end

    def show
      specialty = Specialty.find_by_id(params[:id])
        render json: specialty.to_json
    end
    
    def create
        specialty = Specialty.new(
            name: params[:name]
            )
        if specialty.save
          render json: specialty
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end  


end
