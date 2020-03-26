class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true if current_user.admin == true
  end

  def update?
    true if current_user.admin == true
  end

end
