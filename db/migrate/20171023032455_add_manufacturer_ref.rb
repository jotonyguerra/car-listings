class AddManufacturerRef < ActiveRecord::Migration[5.0]
  def change
    add_reference :searches, :manufacturers_id
  end
end
