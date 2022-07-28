class AddCurrentPriceColumnToDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :current_price, :float
  end
end
