class CreatePreFlavors < ActiveRecord::Migration
  def change
    create_table :pre_flavors do |t|
      t.string :Name

      t.timestamps
    end
  end
end
