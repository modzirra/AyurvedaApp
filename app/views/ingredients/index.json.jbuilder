json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :Name, :Type, :Temperatures, :PreFlavors, :PostFlavors, :Properties, :Dosha_Action
  json.url ingredient_url(ingredient, format: :json)
end
