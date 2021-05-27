class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

    def show
        category = Category.find(params[:id])
        render json: Category
    end

    def create
        category = Category.new(category_params)
        if Category.save
          render json: category
        else
          render json: { error: "Not all fields are filled out correctly" }
        end
    end

    def destroy
        category = Category.find_by_id(params[:id])
        if Category.destroy
            render json: category
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private 

    def category_params 
        params.permit(:name, :user_id)
    end
end
