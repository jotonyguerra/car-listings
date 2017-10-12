class CarsController < ApplicationController

  def index
    @cars = Car.all
    # @Car = Car.search(params[:search])

    # if params[:query].present?
    #   @cars = Car.text_search(params[:query]) .page(params[:page]).per_page(5)
    # else
    #   @cars = Car.empty
    # end
  end

  # def search
  #   @car = Car.search(params[:search])
  #   respond_to do |format|
  #    format.js  { render :partial => "cars/search", :locals => {:search => @car, :query => params[:search]} }
  #    format.html    { render :index }
  #   end
  # end

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
    params.require(:car).permit(:query, :name, :color, :year, :mileage, :description,
                                                :manufacturer, :manufacturer_id)
  end
end
