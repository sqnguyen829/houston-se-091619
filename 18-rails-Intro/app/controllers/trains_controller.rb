class TrainsController < ApplicationController

  def index
    @trains = Train.all
  end

  def show
    @train = Train.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    # byebug
    train = Train.find(params[:id])
    train.destroy
    redirect_to '/trains'
  end
end
