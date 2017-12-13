class RelativePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
       #TODO Adventure controller -> policy_scope(@hero.relatives)
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
    relative? && relative.admin?
  end

  def update?
    relative? && relative.admin?
  end

  def destroy?
    relative? && relative.admin?
  end

  def invitation?
    record.invitation_status == "pending" && record.user == nil
  end

  def accept?
    record.invitation_status == "pending" && record.user == nil
  end

  def decline?
    record.invitation_status == "pending" && record.user == nil
  end

  private

  def relative?
    relative != nil
  end

  def relative
    @relative ||= record.hero.relatives.where(invitation_status: 'accepted').find_by_user_id(user.id)
  end
end
