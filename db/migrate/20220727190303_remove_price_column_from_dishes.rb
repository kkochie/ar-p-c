class RemovePriceColumnFromDishes < ActiveRecord::Migration[6.1]
  def change
    remove_column :dishes, :price, :nil
  end
end
