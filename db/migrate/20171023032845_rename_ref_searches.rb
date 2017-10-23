class RenameRefSearches < ActiveRecord::Migration[5.0]
  def change
    remove_column :searches, :manufacturers_id_id
    add_column :searches, :manufacturer_id, :integer
  end
end
