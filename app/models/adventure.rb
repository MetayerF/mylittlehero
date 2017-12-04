class Adventure < ApplicationRecord
  belongs_to :user
  belongs_to :hero
  has_many :photo, dependent: :destroy

  validates :user_id, :hero_id, :title, :date, presence: true

end
