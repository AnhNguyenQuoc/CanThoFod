class CreateRestaurantFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_favorites do |t|
      t.references :restaurant, foreign_key: true 
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
