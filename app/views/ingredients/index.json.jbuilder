json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :Name, :Type, :Temperature, :PreFlavor, :PostFlavor, :Property, :Dosha_Action
  json.url ingredient_url(ingredient, format: :json)
end
