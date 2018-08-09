class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "ACCESO DENEGADO"
    end
  end

end
