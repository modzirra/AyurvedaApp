class CreateIngredientDoshaActions < ActiveRecord::Migration
  def change
    create_table :ingredient_dosha_actions do |t|
      t.integer :ingredient_id
      t.integer :dosha_action_id

      t.timestamps
    end
  end
end
