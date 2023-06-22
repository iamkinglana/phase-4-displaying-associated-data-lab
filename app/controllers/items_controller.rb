class ItemsController < ApplicationController
  def index
    render json:Item.all ,status: :ok

  end

  def def show
    items = Item.find(params[:id])
    render json: items, include: :reviews
  end
end
