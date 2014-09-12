class UsersController < ApplicationController

  def new
    @user = User.new
    @is_signup = true
    # redirect_to posts_path if current_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to new_user_path
    else
      render new_user_path
    end
  end

private

  def user_params
    params.require(:user).permit(:email, :username, :fname, :lname, :password, :password_confirmation, :profile_pic)
  end

end
