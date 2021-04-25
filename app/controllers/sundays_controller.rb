class SundaysController < ApplicationController
    def index
        sundays = Sunday.all
        render json: sundays
    end

    def show
        sunday = Sunday.find(params[:id])
        render json: sunday
    end

    def create
        
        sunday = Sunday.new(sunday_params(:available, :start, :end, :doctors_id))
        if sunday.save
          render json: sunday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        sunday = Sunday.find_by_id(params[:id])
        if sunday.update(sunday_params(:available, :start, :end))
            render json: sunday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def sunday_params(*args)
        params.require(:sunday).permit(*args)
    end 
end
