class AddPostFlavorIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :post_flavor_id, :int
  end
end
