class Manufacturer < ApplicationRecord
  validates_presence_of :name, :country
  validates :name, uniqueness: true
  has_many :cars

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
