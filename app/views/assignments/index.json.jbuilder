json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :total_points
  json.url assignment_url(assignment, format: :json)
end
