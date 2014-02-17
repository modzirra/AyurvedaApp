class CreateRemedies < ActiveRecord::Migration
  def change
    create_table :remedies do |t|
      t.string :ailment
      t.string :cure

      t.timestamps
    end
  end
end
