class CreateAilments < ActiveRecord::Migration
  def change
    create_table :ailments do |t|
      t.string :Name
      t.string :Remedy

      t.timestamps
    end
  end
end
