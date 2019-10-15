class TrainsController < ApplicationController

  before_action :current_train, only: [:show, :edit, :update, :destroy]

  # before_action :current_train
  # skip_before_action :current_train, only: [:index, :new, :create]

  def index
    @trains = Train.all
  end

  def show
    # @train = current_train
  end

  def new
    @train = Train.new
    @drivers = Driver.all
  end

  def create
    # byebug
    @train = Train.create(trains_params)
    redirect_to train_path(@train)
    # redirect_to @train

  end

  def edit
    # @train = Train.find(params[:id])
    @drivers = Driver.all
  end

  def update
    # byebug
    # @train = Train.find(params[:id])
    @train.update(trains_params)

    redirect_to "/trains/#{@train.id}"
  end

  def destroy
    # byebug
    # train = Train.find(params[:id])
    @train.destroy
    redirect_to trains_path
    # redirect_to '/trains'
  end

  def current_train
    @train = Train.find(params[:id])
  end

  def trains_params
    params.require(:train).permit(:destination, :time, :driver_id)
  end

end


