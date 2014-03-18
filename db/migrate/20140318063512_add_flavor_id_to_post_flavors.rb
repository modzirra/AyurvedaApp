class AddFlavorIdToPostFlavors < ActiveRecord::Migration
  def change
    add_column :post_flavors, :flavor_id, :int
  end
end
