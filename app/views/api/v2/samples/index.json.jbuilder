json.array!(@samples) do |s|
  json.id s.id
  json.name s.name
  json.sample s.sample
end