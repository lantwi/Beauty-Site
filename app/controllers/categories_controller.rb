class CategoriesController < ApplicationController
  before_action :authenticate

    def index
      @categories = Category.all
    end

    def show
      @category = Category.find(params[:id])
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.create(category_params)
      redirect_to category_path(@category)
    end

    def edit
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find(params[:id])
      @category.update(category_params)
      redirect_to category_path(@category)
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to categories_path
    end

    private

    def category_params
      params.require(:category).permit(:name, :img_url)
    end

end
