json.array!(@digestives) do |digestive|
  json.extract! digestive, :id, :ingredient_id, :flavor_id
  json.url digestive_url(digestive, format: :json)
end
