class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      flash[:success] = "Order " + @order.number + " created!"
      redirect_to @order
    else
      @title = "New Order"
      render 'new'
    end
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(params[:order])
      flash[:success] = "Order details updated!"
      redirect_to order_path
    else
      @title = "Edit Order"
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.items.count == 0
      @order.destroy
      flash[:success] = "Order deleted!"
      redirect_to orders_path
    else
      flash[:error] = "Order can't be deleted, there are items related to this order"
      redirect_to order_path
    end
  end
end
