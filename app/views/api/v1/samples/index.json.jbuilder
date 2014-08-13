json.array!(@api_v1_samples) do |api_v1_sample|
  json.extract! api_v1_sample, :id
  json.url api_v1_sample_url(api_v1_sample, format: :json)
end
