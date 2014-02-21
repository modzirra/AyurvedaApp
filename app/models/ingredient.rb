class Ingredient < ActiveRecord::Base
	belongs_to :ailment

	has_one :food_group
	has_one :temperature

	has_many :pre_flavors
	has_many :post_flavors
	has_many :dosha_actions
	has_many :properties

	scope :heating, -> do
		where(temperature: 'Heating')
	end

	scope :cooling, -> do
		where(temperature: 'Cooling')
	end
end
