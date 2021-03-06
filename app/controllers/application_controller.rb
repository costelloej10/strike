class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  before_filter :authenticate

  def authenticate
    unless current_user.present?
      redirect_to new_session_path, notice: "Please sign in."
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if (session[:user_id]) rescue true
  end
  helper_method :current_user
end
