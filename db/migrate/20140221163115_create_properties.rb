class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :Name

      t.timestamps
    end
  end
end
