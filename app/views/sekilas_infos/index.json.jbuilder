json.array!(@sekilas_infos) do |sekilas_info|
  json.extract! sekilas_info, :id, :title, :content
  json.url sekilas_info_url(sekilas_info, format: :json)
end
