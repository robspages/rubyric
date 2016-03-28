json.array!(@courses) do |course|
  json.extract! course, :id, :title, :term
  json.url course_url(course, format: :json)
end
