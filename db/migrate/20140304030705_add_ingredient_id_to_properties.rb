class AddIngredientIdToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :ingredient_id, :integer
  end
end
