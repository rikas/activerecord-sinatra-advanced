class RemoveCityFieldFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :city
  end
end