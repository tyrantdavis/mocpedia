class CollaboratorsController < ApplicationController
  require 'will_paginate/array'

  before_action :set_wiki

  def index
    @users = User.all.paginate(page: params[:page], per_page: 6)
  end

  def create
    @user = User.find(params[:user_id])
    @collaborator = @wiki.collaborators.new(user: @user)

    if @collaborator.save
      flash[:notice] = "#{@user.name} as a collaborator"
    else
      flash[:error] = "Problem adding #{@user.name} as a collaborator. Please try again."
     end
     redirect_to wiki_collaborators_path(@wiki)
    end


  def destroy
     @collaborator = @wiki.collaborators.find(params[:id])
     if @collaborator.destroy
        flash[:notice] = "Collaborator removed from wiki."
     else
       flash[:error] = "Error removing this collaborator. Please try again."
     end
     redirect_to wiki_collaborators_path(@wiki)
   end

   private

   def set_wiki
     @wiki = Wiki.find(params[:wiki_id])
   end
end
