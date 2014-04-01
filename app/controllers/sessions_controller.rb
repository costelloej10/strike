class SessionsController < ApplicationController
  before_filter :authenticate, except: [:new, :create]

  def new

  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, :notice => "Welcome #{user.username}!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, :notice => "Logged out!"
  end
end
