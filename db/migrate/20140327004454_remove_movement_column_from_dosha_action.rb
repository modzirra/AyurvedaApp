class RemoveMovementColumnFromDoshaAction < ActiveRecord::Migration
  def change
    remove_column :dosha_actions, :Movement, :string
  end
end
