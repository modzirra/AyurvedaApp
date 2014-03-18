json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :Name, :Type, :Temperature, :Pre_Flavor, :Post_Flavor, :Property, :Dosha_Action
  json.url ingredient_url(ingredient, format: :json)
end
