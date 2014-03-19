class RemoveIngredientIdFromProperty < ActiveRecord::Migration
  def change
    remove_column :properties, :ingredient_id, :integer
  end
end
