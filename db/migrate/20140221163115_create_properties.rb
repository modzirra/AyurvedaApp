class CreateProperties < ActiveRecord::Migration
  def change
  	drop_table :properties
    create_table :properties do |t|
      t.string :Name

      t.timestamps
    end
  end
end
