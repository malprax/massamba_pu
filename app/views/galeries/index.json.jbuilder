json.array!(@galeries) do |galery|
  json.extract! galery, :id, :name
  json.url galery_url(galery, format: :json)
end
