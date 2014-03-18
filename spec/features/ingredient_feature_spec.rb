require 'spec_helper'

describe Ingredient, type: :feature do
	
	context "This Resource Works" do
		it "Show ingredients page works" do
			visit "/ingredients"
			page.should have_content "Ingredients"
		end

		it "Should create a new Ingredient" do
			visit '/ingredients/new'
			fill_in 'Name', with: 'test name'
			fill_in 'Type', with: 'test type'
			fill_in 'Temperature', with: 'Heating'
			#select ['Sweet', 'Salty'], from: 'ingredient_flavor_ids'
			#select('Dry', :from => 'ingredient_property_ids')
			click_button 'create Ingredient'
		end
	end
end