json.array!(@temperatures) do |temperature|
  json.extract! temperature, :id, :Type
  json.url temperature_url(temperature, format: :json)
end
