class Search < ApplicationRecord

  def cars
    @cars ||= find_cars
  end

  private
  def find_cars
    cars = Car.order(:name)
    cars = Car.where("name like ?", "%#{keyword}%") if keyword.present?
    cars = Car.where(car_id: car_id) if car_id.present?
    cars
  end
end
