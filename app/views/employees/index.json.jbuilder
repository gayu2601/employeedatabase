json.array!(@employees) do |employee|
  json.extract! employee, :name, :bdate, :addr, :salary, :department_id, :eno, :gender
  json.url employee_url(employee, format: :json)
end
