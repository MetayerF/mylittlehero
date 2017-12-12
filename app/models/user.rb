class User < ApplicationRecord
  GENDERS = %w(Homme Femme)
  mount_uploader :photo, PhotoUploader

  has_many :created_adventures, class_name: 'Adventure', dependent: :destroy
  has_many :relatives, dependent: :destroy
  has_many :created_heros, class_name: 'Hero', dependent: :destroy
  has_many :heros, through: :relatives

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :firstname, :lastname, :gender, presence: true, on: :update
end
