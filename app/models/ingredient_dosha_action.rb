class IngredientDoshaAction < ActiveRecord::Base
	belongs_to :ingredient
	belongs_to :dosha_action
end
