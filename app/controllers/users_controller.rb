class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def top
    redirect_to "/users/#{current_user.id}"
  end

  def index
    @users = User.where(group_id: current_user.group_id)
  end

end
