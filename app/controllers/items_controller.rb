class ItemsController < ApplicationController
  before_action :authenticate

    def index
      @items = Item.all
    end

    def show
      @item = Item.find(params[:id])
    end

    def new
      @item = Item.new
      @categories = Category.all
    end

    def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to item_path(@item)
      else
        redirect_to new_item_path
      end
    end

    def edit
      @item = Item.find(params[:id])
      @categories = Category.all
    end

    def update
      @item = Item.find(params[:id])
      @item.update(item_params)
      redirect_to item_path(@item)
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to items_path
    end

    private

      def item_params
        params.require(:item).permit(:name, :description, :image_url, :buy_url)
      end  
end
