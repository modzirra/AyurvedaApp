class RenameNameColumnInFoodGroups < ActiveRecord::Migration
  def change
  	rename_column :food_groups, :Name, :name
  end
end
