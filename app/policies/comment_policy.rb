class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  def create?
    relative? && (relative.admin? || relative.editor? || relative.viewer?)
  end

  def update?
    relative? && (
      relative.admin? ||
      (relative.editor? && record.user == user) ||
      (relative.viewer? && record.user == user)
    )
  end

  def destroy?
    relative? && (
      relative.admin? ||
      (relative.editor? && record.user == user) ||
      (relative.viewer? && record.user == user)
    )
  end

  private

  def relative?
    relative != nil
  end

  def relative
    @relative ||= record.adventure.hero.relatives.find_by_user_id(user.id)
  end
end
