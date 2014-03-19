class AddDecreasesToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :decreases, :string
  end
end