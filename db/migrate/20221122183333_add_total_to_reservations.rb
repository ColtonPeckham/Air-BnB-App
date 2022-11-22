class AddTotalToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :total, :decimal, precision: 9, scale: 2
  end
end
