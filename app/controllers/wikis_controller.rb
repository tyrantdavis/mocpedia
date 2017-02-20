class WikisController < ApplicationController

  # skip_before_filter :authenticate_user!
  before_action :set_wiki, except: [:new, :create, :index]

  def new
    @wiki = Wiki.new
    authorize @wiki
  end

  def create
    # @wiki = Wiki.new
    # @wiki.title = params[:wiki][:title]
    # @wiki.body = params[:wiki][:body]
    # @wiki.user = current_user

    @wiki = current_user.wikis.new(wiki_params)
    authorize @wiki

    if @wiki.save
      flash[:notice] = "Wiki was saved."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving the wiki. Please try again."
      render :new
    end
  end

  def index
    @wikis = Wiki.all
  end

  def show
    authorize @wiki
  end

  def edit
    authorize @wiki
  end

  def update
    authorize @wiki
    if @wiki.update_attributes(wiki_params)
      flash[:notice] = "Wiki was updated."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving the wiki. Please try again."
      render :edit
    end
  end

  def destroy
    authorize @wiki
    if @wiki.destroy
      flash[:notice] = "\"#{@wiki.title}\" was deleted successfully."
      redirect_to wikis_path
    else
      flash.now[:alert] = "There was an error deleting the wiki."
      render :show
    end
  end

  private

  def set_wiki
    @wiki = Wiki.find(params[:id])
  end

  def wiki_params
    params.require(:wiki).permit(:title, :body, :private)
  end
end
