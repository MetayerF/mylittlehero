class AdventurePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #TODO Adventure controller -> policy_scope(@hero.adventures)
      scope.all
    end
  end

  def show?
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  # def index?
  #   relative? && (relative.admin? || relative.editor? || relative.viewer?)
  # end

  def create?
    relative? && (
      relative.admin? ||
      relative.editor?
    )
  end

  def update?
    relative? && (
      relative.admin? ||
      (relative.editor? && record.user == user)
    )
  end

  def destroy?
    relative? && (
      relative.admin? ||
      (relative.editor? && record.user == user)
    )
  end

  private

  def relative?
    relative != nil
  end

  def relative
    @relative ||= record.hero.relatives.where(invitation_status: 'accepted').find_by_user_id(user.id)
  end
end
