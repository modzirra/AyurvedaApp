class AddTemperatureToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :temperature_id, :int
  end
end
