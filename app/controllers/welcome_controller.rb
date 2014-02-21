class WelcomeController < ApplicationController
	def index
		@ingredient_names = Ingredient.name
	end
end
