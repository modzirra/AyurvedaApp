json.array!(@flavors) do |flavor|
  json.extract! flavor, :id, :name
  json.url flavor_url(flavor, format: :json)
end
