json.array!(@criteria) do |criterium|
  json.extract! criterium, :id, :text, :weight
  json.url criterium_url(criterium, format: :json)
end
