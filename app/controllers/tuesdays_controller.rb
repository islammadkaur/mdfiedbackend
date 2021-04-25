class TuesdaysController < ApplicationController
    def index
        tuesdays = Tuesday.all
        render json: tuesdays
    end

    def show
        tuesday = Tuesday.find(params[:id])
        render json: tuesday
    end

    def create
        
        tuesday = Tuesday.new(tuesday_params(:available, :start, :end, :doctors_id))
        if tuesday.save
          render json: tuesday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        tuesday = Tuesday.find_by_id(params[:id])
        if tuesday.update(tuesday_params(:available, :start, :end))
            render json: tuesday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def tuesday_params(*args)
        params.require(:tuesday).permit(*args)
    end 
end
