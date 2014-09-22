class PostsController < ApplicationController

  respond_to :html, :json

  def index
    @posts = Post.paginate(page: params[:page], per_page: 12)

    respond_with @posts, each_serializer: PostSerializer
  end

  def user_posts
    @posts = Post.where(user_id: params[:id]).all

    respond_with @posts, each_serializer: PostSerializer
  end

  def user_favorites
    @user = User.where(id: params[:id]).first

    @posts = []

    @user.favorites.each do |fav|
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
      redirect_to posts_path
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:question, :user_id, :category_id, :post_pic)
  end

end
