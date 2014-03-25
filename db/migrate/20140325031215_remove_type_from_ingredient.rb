class RemoveTypeFromIngredient < ActiveRecord::Migration
  def change
    remove_column :ingredients, :Type, :string
  end
end
