json.array!(@pre_flavors) do |pre_flavor|
  json.extract! pre_flavor, :id, :Name
  json.url pre_flavor_url(pre_flavor, format: :json)
end
