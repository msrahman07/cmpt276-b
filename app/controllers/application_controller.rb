class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
 
  def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up) << [:first_name, :last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])

    devise_parameter_sanitizer.permit(:account_update, keys:[:fullname,  :phone_number, :description, :email, :password])

  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
