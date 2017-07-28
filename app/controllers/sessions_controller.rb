class SessionsController < ApplicationController
  before_action :restrict_authenticated_user, except: [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "You have successfully logged in!"
      log_in(user)
      redirect_to root_path
    else
      flash[:notice] = "There is an error with the Login form"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
