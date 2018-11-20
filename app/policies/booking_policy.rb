class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    record.lesson.user != user
  end

  def update?
    record.lesson.user == user
  end

  def confirm?
    record.lesson.user == user
  end
end
