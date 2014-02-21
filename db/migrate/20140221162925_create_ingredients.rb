class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :Name
      t.string :Type
      t.string :Temperature
      t.string :PreFlavor
      t.string :PostFlavor
      t.string :Property
      t.string :Dosha_Action

      t.timestamps
    end
  end
end
