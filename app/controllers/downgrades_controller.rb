class DowngradesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    # Change user role to standard then disable private wikis...
    current_user.standard!

    current_user.wikis.update_all(private: false)

    flash[:notice] = "You have sucessfully downgraded. All of your private wikis are now available for public viewing."

    redirect_to root_path

  end
end
