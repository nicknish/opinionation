class UsersController < ApplicationController
  before_action :check_security, only: [:edit, :update]
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

  def edit
    @user = User.where(username: params[:id]).first
  end

  def update
    @user = User.where(username: params[:id]).first
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
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
    params.require(:user).permit(:email, :username, :fname, :lname, :password, :password_confirmation, :profile_pic, :gets_mention_emails, :gets_question_emails)
  end

  def check_security
    if current_user != User.where(username:params[:id]).first
      redirect_to posts_path
    end
  end

end
