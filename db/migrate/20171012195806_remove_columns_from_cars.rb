class RemoveColumnsFromCars < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :manufacturers_id
    remove_column :manufacturers, :cars_id
  end
end
