class ItemsController < ApplicationController

  def index
    @order = Order.find(params[:order_id])
    @items = @order.items.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @order = Order.find(params[:order_id])
    @item = @order.items.build
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(params[:item])
  end

  def update
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end
end
