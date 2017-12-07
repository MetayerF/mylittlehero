class Photo < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  belongs_to :adventure
end
