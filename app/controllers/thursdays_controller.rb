class ThursdaysController < ApplicationController
    def index
        thursdays = Thursday.all
        render json: thursdays
    end

    def show
        thursday = Thursday.find(params[:id])
        render json: thursday
    end

    def create
        
        thursday = Thursday.new(thursday_params(:available, :start, :end, :doctors_id))
        if thursday.save
          render json: thursday
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def update
        thursday = Thursday.find_by_id(params[:id])
        if thursday.update(thursday_params(:available, :start, :end))
            render json: thursday
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private

    def thursday_params(*args)
        params.require(:thursday).permit(*args)
    end 
end
