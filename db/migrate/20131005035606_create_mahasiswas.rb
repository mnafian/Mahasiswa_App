class CreateMahasiswas < ActiveRecord::Migration
  def change
    create_table :mahasiswas do |t|
      t.integer :nim
      t.string :nama
      t.string :alamat
      t.string :jam_absen

      t.timestamps
    end
  end
end
