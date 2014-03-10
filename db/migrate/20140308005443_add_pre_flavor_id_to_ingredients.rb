class AddPreFlavorIdToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :pre_flavor_id, :int
  end
end
