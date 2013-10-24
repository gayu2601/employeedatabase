json.array!(@universities) do |university|
  json.extract! university, :uname, :uloc
  json.url university_url(university, format: :json)
end
