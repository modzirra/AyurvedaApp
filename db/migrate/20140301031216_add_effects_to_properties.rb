class AddEffectsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :effects, :string
  end
end
