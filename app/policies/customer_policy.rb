class CustomerPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
  def index?
    @user.has_any_role? :admin , :customer
  end 

  def show?
    true
  end  

  def new?
    true
  end

  def create?
    true
  end  

  def edit? 
    (@user.has_role? :admin) || ( @user.email== record.email)
  end

  def destroy?
    (@user.has_role? :admin) || ( @user.email== record.email)
  end  
end
