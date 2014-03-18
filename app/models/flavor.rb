class Flavor < ActiveRecord::Base
	has_many :pre_flavors
	has_many :post_flavors

	has_many :ingredients, through: :pre_flavors
	has_many :ingredients, through: :post_flavors
end
