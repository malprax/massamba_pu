json.array!(@pages) do |page|
  json.extract! page, :id, :name, :content, :permalink, :picture_id
  json.url page_url(page, format: :json)
end
