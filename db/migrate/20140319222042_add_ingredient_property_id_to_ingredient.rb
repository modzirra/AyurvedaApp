class AddIngredientPropertyIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :ingredient_property, :integer
  end
end
