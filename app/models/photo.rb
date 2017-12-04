class Photo < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  belongs_to :adventure
  validates :adventure_id, :picture, presence: true
end
