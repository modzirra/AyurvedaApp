class RemovePropertyIdFromIngredient < ActiveRecord::Migration
  def change
    remove_column :ingredients, :property_id, :integer
  end
end
