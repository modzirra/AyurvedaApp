json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :Name, :FoodGroup, :Temperature, :PreFlavors, :PostFlavors, :Properties, :DoshaAction
  json.url ingredient_url(ingredient, format: :json)
end
