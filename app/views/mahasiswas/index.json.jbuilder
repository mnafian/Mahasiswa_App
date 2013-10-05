json.array!(@mahasiswas) do |mahasiswa|
  json.extract! mahasiswa, :nim, :nama, :alamat, :jam_absen
  json.url mahasiswa_url(mahasiswa, format: :json)
end