class Adventure < ApplicationRecord
  belongs_to :user
  belongs_to :hero
  has_many :photos, inverse_of: :adventure, autosave: true, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :user_id, :hero_id, :title, :date, presence: true

  accepts_nested_attributes_for :photos
end
