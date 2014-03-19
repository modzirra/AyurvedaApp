class AddIncreasesToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :increases, :string
  end
end
