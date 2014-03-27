class RemoveExtraColumnsFromProperty < ActiveRecord::Migration
  def change
  	remove_column :properties, :decreases, :string
  	remove_column :properties, :effects, :string
  	remove_column :properties, :increases, :string
  end
end