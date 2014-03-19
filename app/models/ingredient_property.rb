class IngredientProperty < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :property
end
