class CustomersController < ApplicationController
  before_action :current_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    @customer = Customer.new
    @restaurants = Restaurant.all
  end

  def create
    @customer = Customer.new(customers_params)


    if @customer.valid?
        @customer.save
        redirect_to customer_path(@customer)
    else
      # byebug
      flash[:errors] = @customer.errors.full_messages
      redirect_to new_customer_path
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer.update(customers_params)
    redirect_to @customer
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end

  private

  def current_customer
    @customer = Customer.find(params[:id])
  end

  def customers_params
    params.require(:customer).permit(:name, restaurant_ids: [])
  end

end
