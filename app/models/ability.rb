class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role == "admin"
      can :manage, :all
    end
    if user.role == "capturista"
      can :manage, [Box]
    end
    if user.role == "reportes"
      can :read, :all
    end
  end
end
