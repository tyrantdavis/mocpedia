class SecretController < ApplicationController
  before_action :authenticate_user!

  def index
    @wikis = current_user.wikis.paginate(page: params[:page], per_page: 9)
  end
end
