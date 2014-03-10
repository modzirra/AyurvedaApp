class Flavor < ActiveRecord::Base
	has_many :digestives
	has_many :ingredients, through: :digestives
end
