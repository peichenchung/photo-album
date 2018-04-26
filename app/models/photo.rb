class Photo < ApplicationRecord
  mount_uploader :file_location, PhotoImageUploader #加入上傳器
  validates_presence_of :title, :date, :description, :file_location #資料驗證,確保必填
end
