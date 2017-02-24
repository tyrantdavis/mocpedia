class DowngradeController < ApplicationController
  def new
  end

  def create
    # Change user role to standard then...
    current_user.standard!

    @wikis = current_user.wikis

    @wikis.each do |wiki|
      # ... make private wikis public.
      wiki.update_attribute(:private, false)
    end

  end

  flash[:notice] = "You have sucessfully downgraded. All of your private wikis are now available for public viewing."

  redirect_to root_path
end
