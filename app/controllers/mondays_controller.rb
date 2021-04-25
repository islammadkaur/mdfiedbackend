class MondaysController < ApplicationController
    def index
        mondays = Monday.all
        render json: mondays
    end

    def show
        monday = Monday.find(params[:id])
        render json: monday
    end

    def create
        
        monday = Monday.new(monday_params(:available, :start, :end, :doctors_id))
        if monday.save
          render json: monday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        monday = Monday.find_by_id(params[:id])
        if monday.update(monday_params(:available, :start, :end))
            render json: monday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def monday_params(*args)
        params.require(:monday).permit(*args)
    end 

end
