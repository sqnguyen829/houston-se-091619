class RestaurantsController < ApplicationController
    before_action :current_restaurant, only: [:show, :edit, :update, :destroy]

    def index
      @restaurants = Restaurant.all
    end
  
    def show
    end

    def new
        @customers = Customer.all
    end
  
    def create
    #   byebug
      @restaurant = Restaurant.create(restaurants_params)
      redirect_to @restaurant
  
    end
  
    def edit
        @customers = Customer.all
    end
  
    def update
      @restaurant.update(restaurants_params)
      redirect_to @restaurant
    end
  
    def destroy
      @restaurant.destroy
      redirect_to restaurants_path
    end
  
    private
  
    def current_customer
      @restaurant = Restaurant.find(params[:id])
    end
  
    def customers_params
      params.require(:restaurant).permit(:name, :cuisine, customer_ids: [])
    end
  
end
