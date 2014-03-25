class DoshaAction < ActiveRecord::Base
	has_many :ingredients_dosha_actions
	has_many :ingredients, through: :ingredient_dosha_action
end
