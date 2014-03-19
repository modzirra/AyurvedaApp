class Ingredient < ActiveRecord::Base
	has_one :food_group
	has_one :temperature

	has_many :pre_flavors
	has_many :flavors, through: :pre_flavors

	has_many :post_flavors
	has_many :flavors, through: :post_flavors

	has_many :properties
	has_many :properties, through: :ingredient_property

	has_many :dosha_actions

	scope :heating, -> do
		where(temperature: 'Heating')
	end

	scope :cooling, -> do
		where(temperature: 'Cooling')
	end
end
