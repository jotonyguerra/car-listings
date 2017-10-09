class Car < ApplicationRecord
  validates_presence_of :name, :manufacturer, :color, :mileage, :year
  validates :year, numericality: {greater_than_or_equal_to: 1920}
  validates :mileage, numericality: {greater_than_or_equal_to: 0}
  belongs_to :manufacturer
end
