json.array!(@departments) do |department|
  json.extract! department, :college_id, :dno, :dname
  json.url department_url(department, format: :json)
end
