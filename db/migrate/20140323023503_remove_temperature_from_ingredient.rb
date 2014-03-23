class RemoveTemperatureFromIngredient < ActiveRecord::Migration
  def change
    remove_column :ingredients, :Temperature, :string
  end
end
