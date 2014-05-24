json.array!(@suara_rakyats) do |suara_rakyat|
  json.extract! suara_rakyat, :id, :name, :address, :category_suara_id, :comment
  json.url suara_rakyat_url(suara_rakyat, format: :json)
end
