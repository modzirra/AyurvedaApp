class FoodGroup < ActiveRecord::Base
	has_many :ingredients

	default_scope order('name')
end
