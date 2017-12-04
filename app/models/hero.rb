class Hero < ApplicationRecord
  belongs_to :user
  has_many :adventures dependent: :destroy
  has_many :relatives

  validates :firstname, :lastname, :gender, :date_of_birth, presence: true
end
