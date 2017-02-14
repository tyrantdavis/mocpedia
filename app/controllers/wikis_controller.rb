class WikisController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
    @wikis = Wiki.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
