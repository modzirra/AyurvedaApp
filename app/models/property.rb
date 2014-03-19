class Property < ActiveRecord::Base
	has_many :ingredients
	has_many :ingredients through: :ingredient_property
end
