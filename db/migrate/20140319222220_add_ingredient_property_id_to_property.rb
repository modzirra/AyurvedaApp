class AddIngredientPropertyIdToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :ingredient_property, :integer
  end
end
