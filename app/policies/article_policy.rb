class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    scope.where(:id => record.id).exists? || scope.publish == true
  end

  def searching?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    true
  end

  def edit?
    true
  end

  def destroy?
    record.user == user
  end
end
