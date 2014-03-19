class Property < ActiveRecord::Base
	has_many :ingredientProperties
	has_many :ingredients, through: :ingredientProperties
end
