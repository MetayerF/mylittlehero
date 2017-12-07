class Relative < ApplicationRecord
  FAMILY_LINKS = %w(Mère Père Grand-Père Grand-Mère Frère Soeur Oncle Tante Cousin Cousine Ami(e))
  belongs_to :user
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
