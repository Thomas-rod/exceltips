class ProgressionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: @user.id).order(:id)
      end
    end

  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def status_update?
    true
  end

  def update?
    true if current_user == user || current_user.admin == true
  end
end
