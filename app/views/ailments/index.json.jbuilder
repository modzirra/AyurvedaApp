json.array!(@ailments) do |ailment|
  json.extract! ailment, :id, :Name, :Remedy
  json.url ailment_url(ailment, format: :json)
end
