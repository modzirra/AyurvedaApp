class AddFoodGroupIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :food_group_id, :int
  end
end
