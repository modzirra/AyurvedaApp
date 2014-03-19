class Property < ActiveRecord::Base
	has_many :ingredient_properties
	has_many :ingredients, through: :ingredient_properties
end
