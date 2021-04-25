class FridaysController < ApplicationController
    def index
        fridays = Friday.all
        render json: fridays
    end

    def show
        friday = Friday.find(params[:id])
        render json: friday
    end

    def create
        
        friday = Friday.new(friday_params(:available, :start, :end, :doctors_id))
        if friday.save
          render json: friday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        friday = Friday.find_by_id(params[:id])
        if friday.update(friday_params(:available, :start, :end))
            render json: friday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def friday_params(*args)
        params.require(:friday).permit(*args)
    end 
end
