class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

   def create?
    true
  end

  def new?
    create?
  end

  def edit
    user.record == user
  end

  def update
    edit?
  end

  def destroy
    record.user == user
  end
end
