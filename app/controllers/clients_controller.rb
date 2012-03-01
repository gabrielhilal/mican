class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(params[:client])
    if @client.save
      flash[:success] = "Client " + @client.name + " created!"
      redirect_to clients_path
    else
      @title = "New Client"
      render 'new'
    end
  end

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      flash[:success] = "Client details updated!"
      redirect_to clients_path
    else
      @title = "Edit Client"
      render 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])
    if @client.orders.count == 0
      @client.destroy
      flash[:success] = "Client deleted!"
      redirect_to clients_path
    else
      flash[:error] = "Client can't be deleted, there are orders related to this client"
      redirect_to clients_path
    end
  end
end
