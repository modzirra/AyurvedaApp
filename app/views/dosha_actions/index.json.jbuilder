json.array!(@dosha_actions) do |dosha_action|
  json.extract! dosha_action, :id, :Dosha
  json.url dosha_action_url(dosha_action, format: :json)
end
