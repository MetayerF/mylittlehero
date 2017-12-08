class Hero < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :adventures, dependent: :destroy
  has_many :photos, through: :adventures
  has_many :relatives, dependent: :destroy, autosave: true, inverse_of: :hero

  accepts_nested_attributes_for :relatives


  validates :firstname, :lastname, :gender, :date_of_birth, presence: true
end
