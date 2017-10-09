class Manufacturer < ApplicationRecord
  validates_presence_of :name, :country
  
  has_many :cars
end
