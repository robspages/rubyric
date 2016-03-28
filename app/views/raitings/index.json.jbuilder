json.array!(@raitings) do |raiting|
  json.extract! raiting, :id, :critera_id, :text, :position
  json.url raiting_url(raiting, format: :json)
end
