class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      raise "It failed"
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
    :phone_number, :bio, :website_url, :facebook_url, :instagram_url, :available,
    :address, :photo, :photo_cache, weekday_preference: [], daytime_preference: [])
  end
end
