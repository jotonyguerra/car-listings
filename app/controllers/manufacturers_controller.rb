class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
    # @manufacterer.to_json
  end

  def new
    @manufacturer = Manufacturer.new
  end
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:success] = "Manufacturer successfully added"
      redirect_to root_path
    else
      @errors = @manufacturer.errors.messages
      render :new
    end
  end

  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end


end
