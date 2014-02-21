class Ailment < ActiveRecord::Base
	has_many :ingredients
end
