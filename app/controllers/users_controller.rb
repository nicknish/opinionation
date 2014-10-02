class UsersController < ApplicationController
  respond_to :html, :json
  
  def new
    @user = User.new
    @is_signup = true
    redirect_to posts_path if current_user
  end

  def show
    @user = User.where(username: params[:id]).first

    respond_with @user, each_serializer: UserSerializer
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to posts_path
      WelcomeEmailWorker.perform_async(@user.id)
    else
      render new_user_path
    end
  end

private

  def user_params
    params.require(:user).permit(:email, :username, :fname, :lname, :password, :password_confirmation, :profile_pic)
  end

end
