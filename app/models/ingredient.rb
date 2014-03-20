class Ingredient < ActiveRecord::Base
	has_one :food_group
	has_one :temperature

	has_many :preFlavors
	has_many :flavors, through: :preFlavors

	has_many :postFlavors
	has_many :flavors, through: :postFlavors

	has_many :ingredientProperties
	has_many :properties, through: :ingredientProperties

	has_many :dosha_actions

	scope :heating, -> do
		where(temperature: 'Heating')
	end

	scope :cooling, -> do
		where(temperature: 'Cooling')
	end
end
