class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update_attributes(params[:car])
    # if @car.update_attributes(params[:car])
      redirect_to @car
    # else
    #   render action :'edit'
    # end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      redirect_to cars_path
    else
      redirect_to @car
    end
  end

  def create
    @car = Car.new(params[:car])
    # if @car.save
      @car.save
      redirect_to @car
    # else
    #     render action : 'new'
    # end
  end

  def new
    @car = Car.new
  end


end
