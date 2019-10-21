class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(params[:id])
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.create(trains_params)
    redirect_to train_path(@train)
  end

  def edit
    @train = Train.find(params[:id])
  end

  def update
    @train = Train.find(params[:id])
    @train.update(trains_params)
    redirect_to "trains/#{@train.id}"
  end

  def destroy
    # byebug
    train = Train.find(params[:id])
    train.destroy
    redirect_to trains_path(@train)
  end

  def train_params
    params.require(:train).permit(:destination, :time)
  end

end
