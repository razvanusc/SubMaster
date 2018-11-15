class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
    :phone_number, :bio, :website_url, :facebook_url, :instagram_url, :available,
    :address, :weekday_preference, :daytime_preference, :photo)
  end
end
