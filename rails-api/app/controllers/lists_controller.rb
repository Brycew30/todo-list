class ListsController < ApplicationController
  def index
    lists = List.all
    render json: ListSerializer.new(lists)
  end

  def show
    lists = Item.find_by(name: params[:item_name]).lists
    render json: ListSerializer.new(lists.sample)
  end

  def create
    list = List.new(list_params)
    items = params[:items].map {|item| Item.find_or_create_by(name: item)}
    list.items << items
    list.save
    render json: ListSerializer.new(list)
  end

  private
    def list_params
      params.require(:list).permit(:title, :list_link, :image_link)
    end
end
