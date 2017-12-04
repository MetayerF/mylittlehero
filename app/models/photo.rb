class Photo < ApplicationRecord
  belongs_to :adventure
  validates :adventure_id, :picture, presence: true
end
