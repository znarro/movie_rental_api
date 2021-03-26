class AddIsRentedToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :is_rented, :boolean
  end
end
