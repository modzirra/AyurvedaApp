class RenameJoinTables < ActiveRecord::Migration
  def change
  	rename_table :pre_flavors, :ingredient_pre_flavors
	rename_table :post_flavors, :ingredient_post_flavors
  end
end
