class WednesdaysController < ApplicationController
    def index
        wednesdays = Wednesday.all
        render json: wednesdays
    end

    def show
        wednesday = Wednesday.find(params[:id])
        render json: wednesday
    end

    def create
        
        wednesday = Wednesday.new(wednesday_params(:available, :start, :end, :doctors_id))
        if wednesday.save
          render json: wednesday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        wednesday = Wednesday.find_by_id(params[:id])
        if wednesday.update(wednesday_params(:available, :start, :end))
            render json: wednesday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def wednesday_params(*args)
        params.require(:wednesday).permit(*args)
    end
end
