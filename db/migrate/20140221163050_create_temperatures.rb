class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.string :Type

      t.timestamps
    end
  end
end
