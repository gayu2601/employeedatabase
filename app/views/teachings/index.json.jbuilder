json.array!(@teachings) do |teaching|
  json.extract! teaching, :employee_id, :designation
  json.url teaching_url(teaching, format: :json)
end
