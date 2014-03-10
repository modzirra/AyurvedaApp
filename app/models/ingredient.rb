class Ingredient < ActiveRecord::Base
	has_one :food_group
	has_one :temperature

	has_many :digestives
	has_many :flavors, through: :digestives
	has_many :dosha_actions
	
	has_many :properties

	scope :heating, -> do
		where(temperature: 'Heating')
	end

	scope :cooling, -> do
		where(temperature: 'Cooling')
	end
end
