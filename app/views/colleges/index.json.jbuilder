json.array!(@colleges) do |college|
  json.extract! college, :c_code, :cname, :university_id
  json.url college_url(college, format: :json)
end
