class ChecklistsController < ApplicationController
    def index
        checklists = Checklist.all
        render json: checklists
    end

    def show
        checklist = Checklist.find(params[:id])
        render json: checklist
    end

    def create
        checklist = Checklist.new(checklist_params)
        if checklist.save
          render json: checklist
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def destroy
        checklist = Checklist.find_by_id(params[:id])
        if checklist.destroy
            render json: checklist
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private 

    def checklist_params 
        params.permit(:name, :check, :category_id)
    end
end
