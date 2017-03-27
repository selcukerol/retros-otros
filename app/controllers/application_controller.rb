class ApplicationController < ActionController::Base
  before_filter :configure_perimitted_parameters, if: :devise_controller?
  # adding custom fields for User signup and edit.
  def configure_perimitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:fname, :lname, :username, :seller])
    devise_parameter_sanitizer.permit(:account_update, keys:[:fname, :lname, :username, :seller])
  end
  protect_from_forgery with: :exception
end
