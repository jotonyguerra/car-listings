require 'factory_girl_rails'

FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) { |n| "Manufacturer #{n}" }
    country "Japan"
  end
end
