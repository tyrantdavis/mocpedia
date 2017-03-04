class CollaboratorsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @wiki = Wiki.find(params[:wiki_id])

    @collaborator.user_id = @user_id
    @collaborator.wiki_id = @wiki_id

    if @collaborator.save
      redirect_to :back
      flash[:notice] = "Collaborator: #{user.name} added. "
    else
      redirect_to :back
      flash[:error] = "There was an error saving this collaborator. Please try again."
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = Collaborator.where(user_id: @user, wiki_id: @wiki).first

    if @collaborator.destroy
      redirect_to :back, notice: "#{@user.name} has been removed as a collaborator."
    else
      redirect_to :back
      flash[:error] = "There was an error deleting this collaborator. Please try again."
    end
  end
end
