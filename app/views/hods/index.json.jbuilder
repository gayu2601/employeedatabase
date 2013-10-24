json.array!(@hods) do |hod|
  json.extract! hod, :employee_id, :department_id
  json.url hod_url(hod, format: :json)
end
