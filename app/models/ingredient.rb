class Ingredient < ActiveRecord::Base
	belongs_to :temperature
	belongs_to :food_group

	has_many :ingredient_pre_flavors
	has_many :pre_flavors, through: :ingredient_pre_flavors, source: :flavor

	has_many :ingredient_post_flavors
	has_many :post_flavors, through: :ingredient_post_flavors, source: :flavor

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
