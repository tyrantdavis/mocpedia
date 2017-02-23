class WikiPolicy < ApplicationPolicy
  attr_reader :user, :wiki

  def initialize(user, wiki)
    @user = user
    @wiki = wiki
  end

  def create?
    user.admin? || user.standard? || user.premium?
  end

  def new?
    create?
  end

  def update?
    user.present?
  end

  def edit?
    update?
  end

  def destroy?
    # if the wiki belongs to the current user or user is admin
    (wiki.user == user) || user.admin?
  end


  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      wiKis = scope.all
      wikis_ary = []

      #allow guest to view all public wikis
      if user.ni?
        wiKis

        wiKis.each do |wiki|
          if wiki.private == false
            wikis_ary.push(wiki)
          end
        end # each method

      #if user is an admin show all wikis
      elsif user.admin?
        wiKis
      #if user premium show all public wikis and private wikis the user created.
      elsif user.premium?
        wiKis

        wiKis.each do |wiki|
          if wiki.private == false || (wiki.user == user)
            wikis_ary.push(wiki)
          end
        end # each method
      #if user standard show public wikis only
      else user.standard?
        wiKis

        wiKis.each do |wiki|
          if wiki.private == false
            wikis_ary.push(wiki)
          end
        end
      end
      # return array of wikis
      wikis_ary
    end 
  end
end
