json.array!(@pages) do |page|
  json.extract! page, :id, :name, :content, :permalink
  json.url page_url(page, format: :json)
end
