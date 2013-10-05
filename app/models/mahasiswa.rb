class Mahasiswa < ActiveRecord::Base
  validates :nim, length: { maximum:8 }
  validates :nama, length: { maximum:20 }
end
