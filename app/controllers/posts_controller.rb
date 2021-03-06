class PostsController < ApplicationController
  before_action :check_security, only: [:new, :create, :update, :destroy]

  respond_to :html, :json

  def index
    @posts = Post.order('created_at DESC').paginate(page: params[:page], per_page: 12)

    respond_with @posts, each_serializer: PostSerializer
  end

  def show
    @post = Post.where(id: params[:id]).first

    respond_with @post, each_serializer: PostSerializer
  end

  def user_posts
    user = User.where(username: params[:id]).first
    @posts = Post.where(user_id: user.id).all

    respond_with @posts, each_serializer: PostSerializer
  end

  def user_favorites
    user = User.where(username: params[:id]).first

    @posts = []

    user.favorites.each do |fav|
      @posts << fav.post
    end

    respond_with @posts, each_serializer: PostSerializer
  end

  def new
    @post = Post.new
  end 

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      @post.associate_tags
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:question, :user_id, :category_id, :post_pic, :temptags)
  end

  def check_security
    if !current_user
      redirect_to new_user_path
    end
  end

end
