class CreatePostFlavors < ActiveRecord::Migration
  def change
    create_table :post_flavors do |t|
      t.string :Name

      t.timestamps
    end
  end
end
