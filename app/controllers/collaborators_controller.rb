class CollaboratorsController < ApplicationController
  def create
        @user = User.find(params[:user_id])
        @wiki = Wiki.find(params[:wiki_id])
        @collaborator = Collaborator.new(wiki: @wiki, user: @user)

          if @collaborator.save
                  flash[:notice] = "#{@user.name} as a collaborator"
       redirect_to @wiki
          else
             flash[:error] = "Problem adding #{@user.name} as a collaborator. Please try again."
       render template: "wikis/edit"
     end
    end


  def destroy
     @wiki = Wiki.find(params[:wiki_id])
     @collaborator = Collaborator.find(params[:id])
     if @collaborator.destroy
        flash[:notice] = "Collaborator removed from wiki."
     else
       flash[:error] = "Error removing this collaborator. Please try again."
     end
     redirect_to @wiki
   end
end
