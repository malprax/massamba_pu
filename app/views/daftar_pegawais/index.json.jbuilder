json.array!(@daftar_pegawais) do |daftar_pegawai|
  json.extract! daftar_pegawai, :id, :name, :nip, :pangkat_id, :golongan_pangkat, :jabatan_id
  json.url daftar_pegawai_url(daftar_pegawai, format: :json)
end
