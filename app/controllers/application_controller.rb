class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def authenticate_user
    current_user.nil? ? (redirect_to login_path) : nil
  end

  def restrict_authenticated_user
    current_user ? (redirect_to root_path) : nil
  end
end
