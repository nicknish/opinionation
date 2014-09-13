class PostsController < ApplicationController

  respond_to :html, :json

  def index
    @posts = Post.all

    respond_with @posts, each_serializer: PostSerializer

  end

end
