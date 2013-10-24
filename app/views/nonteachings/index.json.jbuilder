json.array!(@nonteachings) do |nonteaching|
  json.extract! nonteaching, :employee_id, :post
  json.url nonteaching_url(nonteaching, format: :json)
end
