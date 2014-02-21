class CreateDoshaActions < ActiveRecord::Migration
  def change
    create_table :dosha_actions do |t|
      t.string :Dosha
      t.string :Movement

      t.timestamps
    end
  end
end
