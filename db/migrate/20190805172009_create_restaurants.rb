class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :city
      t.integer :votes, default: 0
      t.timestamps
    end
  end
end