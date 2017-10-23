class SearchesController < ApplicationController
  def index
    redirect_to cars_path
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    if @search.save
      redirect_to search_path(@search)
    end
  end

  def show
    @search = Search.find(params[:id])
  end

  private
  def search_params
    params.require(:search).permit(:keyword, :car_id, :manufacturer_id)
  end



end
