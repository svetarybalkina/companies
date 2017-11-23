class CompanyPolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == company.user
  end
 
  def destroy?
    return true if user.present? && user == company.user
  end
 
  private
 
    def company
      record
    end
end