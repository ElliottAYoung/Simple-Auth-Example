class UsersController < ApplicationController
  before_action :restrict_authenticated_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "You signed up successfully"
      log_in(@user)
      redirect_to root_path
    else
      flash[:notice] = "Form is invalid"
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
