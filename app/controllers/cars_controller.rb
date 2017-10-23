class CarsController < ApplicationController

  def index
    @cars = Car.search(params[:search])
  end

  def search
    @products = Product.search(params[:search])
    respond_to do |format|
      format.js  { render :partial => "elements/livesearch", :locals => {:search => @cars, :query => params[:search]} }
      format.html    { render :index }
    end
  end

  def new
    @car = Car.new
    @manufacturers = Manufacturer.all
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
    params.require(:car).permit(:search, :name, :color, :year, :mileage, :description,
                                                          :manufacturer_id)
  end
end
