class RemovePropertyFromIngredient < ActiveRecord::Migration
  def change
    remove_column :ingredients, :Property, :string
  end
end
