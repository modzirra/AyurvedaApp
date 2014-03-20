class Flavor < ActiveRecord::Base
	has_many :preFlavors
	has_many :ingredients, through: :preFlavors
	
	has_many :postFlavors
	has_many :ingredients, through: :postFlavors
end
