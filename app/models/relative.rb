class Relative < ApplicationRecord
  FAMILY_LINKS  = ["parents", "grand-parents", "frères et soeurs", "oncles et tantes", "cousins et cousines", "amis de la famille"]
  ROLES         = %w(admin editor viewer)

  belongs_to :user, optional: true
  belongs_to :hero

  belongs_to :inviter, optional: true, class_name: "User"

  validates :invitation_token, uniqueness: true, allow_nil: true

  def admin?
    role == 'admin'
  end

  def editor?
    role == 'editor'
  end

  def viewer?
    role == 'viewer'
  end
end
