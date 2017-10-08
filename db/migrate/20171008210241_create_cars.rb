class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :name, null: false
      t.string :color
      t.string :year
      t.string :mileage
    end
  end
end
