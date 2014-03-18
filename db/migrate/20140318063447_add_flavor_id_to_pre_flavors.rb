class AddFlavorIdToPreFlavors < ActiveRecord::Migration
  def change
    add_column :pre_flavors, :flavor_id, :int
  end
end
