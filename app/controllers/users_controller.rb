class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def top
    redirect_to "/users/#{current_user.id}"
  end

end
