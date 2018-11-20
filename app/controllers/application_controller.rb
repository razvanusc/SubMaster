class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo, :photo_cache])
  end

  private

  def after_sign_in_path_for(user)
    if URI(request.referer).path == new_user_registration_path
      user_path(user)
    else
      super
    end
  end

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end
end
