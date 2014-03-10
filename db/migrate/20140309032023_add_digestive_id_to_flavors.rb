class AddDigestiveIdToFlavors < ActiveRecord::Migration
  def change
    add_column :flavors, :digestive_id, :int
  end
end
