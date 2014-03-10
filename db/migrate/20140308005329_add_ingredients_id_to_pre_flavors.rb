class AddIngredientsIdToPreFlavors < ActiveRecord::Migration
  def change
    add_column :pre_flavors, :ingredient_id, :int
  end
end
