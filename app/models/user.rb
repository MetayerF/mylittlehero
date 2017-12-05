class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :relatives, dependent: :destroy
  has_many :heros, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :firstname, :lastname, :gender, presence: true, on: :update
end
