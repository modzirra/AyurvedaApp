class Flavor < ActiveRecord::Base
	has_many :ingredient_post_flavors
	has_many :ingredient_pre_flavors
end
