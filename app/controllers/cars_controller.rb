class CarsController < ApplicationController

  def index
    @cars = Car.all
    # @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @car = Car.new
  end

  private
  def car_params
    params.require(:car).permit(:name, :color, :year, :mileage, :manufacturer)
  end
end
