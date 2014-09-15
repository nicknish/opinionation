class PostsController < ApplicationController

  respond_to :html, :json

  def index
    @posts = Post.all

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
