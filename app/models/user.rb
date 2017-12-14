class User < ApplicationRecord
  GENDERS = %w(Homme Femme)
  mount_uploader :photo, PhotoUploader

  has_many :created_adventures, class_name: 'Adventure', dependent: :destroy
  has_many :relatives, dependent: :destroy
  has_many :created_heros, class_name: 'Hero', dependent: :destroy
  has_many :heros, through: :relatives
  has_many :comments, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :firstname, :lastname, :gender, :date_of_birth, presence: true, on: :update

  def profile_completed?
    required_profile_attributes = [
      :firstname,
      :lastname,
      :date_of_birth,
      :gender
    ]

    required_profile_attributes.all? { |attribute_name| self[attribute_name].present? }
  end
end
