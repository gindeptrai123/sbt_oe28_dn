class UsersController < ApplicationController
  layout "users_sessions", only: [:new, :create]

  def new
    if logged_in?
      redirect_to root_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit :user_name, :email, :full_name, :password,
      :password_confirmation
  end
end
