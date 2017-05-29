class UsersController < ApplicationController

  before_action :move_to_signin

  def show
    @user = User.find(params[:id])
  end

  def top
    redirect_to "/users/#{current_user.id}"
  end

  private
  def move_to_signin
    redirect_to "/users/sign_in" unless user_signed_in?
  end

end
