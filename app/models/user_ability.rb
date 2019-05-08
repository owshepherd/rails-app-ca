# frozen_string_literal: true

class UserAbility
  include CanCan::Ability

  def initialize(user)
    
    # Define abilities for the passed in provider here. For example:
    #
      user ||= User.new # guest provider (not logged in)
      # user shouldn't be able to access other users edit details 
      # provider shoudn't be able to access other providers change booking details 
      if user.admin?
        can :manage, :all
      else 
        can [:read], Listing
        can :manage, Booking
      end 
  end



    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  
end
