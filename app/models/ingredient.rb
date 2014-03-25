class Ingredient < ActiveRecord::Base
	#TEMPERATURES = ['Heating', 'Cooling']
	belongs_to :temperature
	belongs_to :food_group

	has_many :ingredient_pre_flavors
	has_many :pre_flavors, through: :ingredient_pre_flavors, source: :flavor

	has_many :ingredient_post_flavors
	has_many :post_flavors, through: :ingredient_post_flavors, source: :flavor

	has_many :ingredient_properties
	has_many :properties, through: :ingredient_properties

	has_many :ingredient_dosha_actions
	has_many :dosha_actions, through: :ingredient_dosha_actions

	scope :heating, -> do
		where(temperature: 'Heating')
	end

	scope :cooling, -> do
		where(temperature: 'Cooling')
	end
end
