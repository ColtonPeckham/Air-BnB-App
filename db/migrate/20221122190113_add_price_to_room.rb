class AddPriceToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :price, :decimal, precision: 9, scale: 2
  end
end
