class DowngradeController < ApplicationController
  def new
  end

  def create
    current_user.update_attribute(:role, 0)
    @wikis = Wiki.all
    @wikis.each do |wiki|
      if wiki.user.id == current_user.id
        wiki.update_attribute(:private, false)
      end
  end

  flash[:notice] = "You have sucessfully downgraded."

  redirect_to root_path
end
