class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
      cannot :update, User, id: user.id
    else
      cannot :manage, :all
    end
  end
end
