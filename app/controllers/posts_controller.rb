class PostsController < ApplicationController

  respond_to :html, :json

  def index
    @posts = Post.paginate(page: params[:page], per_page: 12)

    respond_with @posts, each_serializer: PostSerializer
  end

  def current_user_posts
    @posts = Post.where(user_id: current_user.id).all

    respond_with @posts, each_serializer: PostSerializer
  end

  def current_user_favorites
    @posts = []

    current_user.favorites.each do |fav|
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

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render json: @post, status: :ok
    else
      render json: @post.errors, status: :internal_server_error
    end
  end

  private

  def post_params
    params.require(:post).permit(:question, :user_id, :category_id, :post_pic)
  end

end
