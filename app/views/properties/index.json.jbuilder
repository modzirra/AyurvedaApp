json.array!(@properties) do |property|
  json.extract! property, :id, :Name
  json.url property_url(property, format: :json)
end
