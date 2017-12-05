class RelativePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  def index?
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  def create?
    relative? && relative.admin?
  end

  def update?
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  def destroy?
    relative? && (
      relative.admin? ||
      (relative.editor? && record.user == user) ||
      (relative.viewer? && record.user == user)
    )
  end

  def accept
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  def decline
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  private

  def relative?
    relative != nil
  end

  def relative
    @relative ||= record.find_by_user_id(user.id)
  end
end
