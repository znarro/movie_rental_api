class RemoveIsRentedFromRentals < ActiveRecord::Migration[6.1]
  def change
    remove_column :rentals, :is_rented, :boolean
  end
end
