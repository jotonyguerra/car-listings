class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :car_id 

      t.timestamps
    end
  end
end
