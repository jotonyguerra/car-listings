class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @manufacturer = Manufacturer.all
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      flash[:success] = "Car successfully added"
      flash[:success] += " Excellent"
      redirect_to cars_path
    else
      @errors = @car.errors.messages
      render :new
    end
  end

  private
  def car_params
    params.require(:car).permit(:name, :color, :year, :mileage, :description,
                                                :manufacturer, :manufacturer_id)
  end
end
