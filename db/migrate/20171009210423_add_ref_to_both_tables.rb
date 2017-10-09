class AddRefToBothTables < ActiveRecord::Migration[5.0]
  def change
    add_reference :manufacturers, :cars, index: true
    add_reference :cars, :manufacturers, index: true
  end
end
#fuck me idk why the factories broke but im adding these references...
