class Relative < ApplicationRecord
  FAMILY_LINKS  = ["parents", "grand-parents", "frères et soeurs", "oncles et tantes", "cousins et cousines", "amis de la famille"]
  ROLES         = %w(admin editor viewer)

  belongs_to :user, optional: true
  belongs_to :hero

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
