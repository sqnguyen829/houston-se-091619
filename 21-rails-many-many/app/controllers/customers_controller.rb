class CustomersController < ApplicationController
  before_action :current_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @restaurants = Restaurant.all
  end

  def create
    # byebug
    @customer = Customer.create(customers_params)
    redirect_to @customer

  end

  def edit
    @restaurants = Restaurant.all
  end

  def update
    @customer.update(customers_params)
    redirect_to @customer
  end

  def destroy
    @customer.destroy
    redirect_to custpomers_path
  end

  private

  def current_customer
    @customer = Customer.find(params[:id])
  end

  def customers_params
    params.require(:customer).permit(:name, restaurant_ids: [])
  end

end
