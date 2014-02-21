json.array!(@post_flavors) do |post_flavor|
  json.extract! post_flavor, :id, :Name
  json.url post_flavor_url(post_flavor, format: :json)
end
