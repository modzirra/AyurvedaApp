class AddIngredientsIdToPostFlavors < ActiveRecord::Migration
  def change
    add_column :post_flavors, :ingredient_id, :int
  end
end
