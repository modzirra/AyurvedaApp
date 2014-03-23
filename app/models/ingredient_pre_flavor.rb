class IngredientPreFlavor < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :flavor
end
