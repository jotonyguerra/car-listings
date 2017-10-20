class Manufacturer < ApplicationRecord
  validates_presence_of :name, :country
  validates :name, uniqueness: true
  has_many :cars
end
