json.array!(@properties) do |property|
  json.extract! property, :id, :Name, :increases, :decreases, :effects
  json.url property_url(property, format: :json)
end
