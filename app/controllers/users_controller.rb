class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    authorize @user

    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])

    # subject_ids = params[:user][:subject_ids]
    # @user.subject_ids = subject_ids

    authorize @user


    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
    :phone_number, :bio, :website_url, :facebook_url, :instagram_url, :available,
    :address, :photo, :photo_cache, weekday_preference: [], daytime_preference: [], subject_ids: [])
  end
end
