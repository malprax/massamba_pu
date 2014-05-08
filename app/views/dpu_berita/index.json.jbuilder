json.array!(@dpu_berita) do |dpu_beritum|
  json.extract! dpu_beritum, :id, :title, :content
  json.url dpu_beritum_url(dpu_beritum, format: :json)
end
