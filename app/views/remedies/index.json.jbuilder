json.array!(@remedies) do |remedy|
  json.extract! remedy, :id, :ailment, :cure
  json.url remedy_url(remedy, format: :json)
end
