class SaturdaysController < ApplicationController
    def index
        saturdays = Saturday.all
        render json: saturdays
    end

    def show
        saturday = Saturday.find(params[:id])
        render json: saturday
    end

    def create
        
        saturday = Saturday.new(saturday_params(:available, :start, :end, :doctors_id))
        if saturday.save
          render json: saturday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        saturday = Saturday.find_by_id(params[:id])
        if saturday.update(saturday_params(:available, :start, :end))
            render json: saturday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def saturday_params(*args)
        params.require(:saturday).permit(*args)
    end 
end
