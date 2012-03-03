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
    @item.size36 ||= "0"
    @item.size37 ||= "0"
    @item.size38 ||= "0"
    @item.size39 ||= "0"
    @item.size40 ||= "0"
    @item.size41 ||= "0"
  end

  def edit
    @order = Order.find(params[:order_id])
    @item = Item.find(params[:id])
  end

  def create
    @order = Order.find(params[:order_id])
    @item = @order.items.build(params[:item])
    if @item.save
      flash[:success] = "Item created!"
      redirect_to order_path (@order)
    else
      render 'new'
    end
  end

  def update
    @order = Order.find(params[:order_id])
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      flash[:success] = "Item updated!"
      redirect_to order_path (@order)
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:order_id])
    Item.find(params[:id]).destroy
    flash[:success] = "Item deleted!"
    redirect_to order_path (@order)
  end
end
