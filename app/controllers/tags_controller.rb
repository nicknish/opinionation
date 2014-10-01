class TagsController < ApplicationController

  respond_to :html, :json

  def show
    @tag = Tag.where(name: params[:id]).first
    @posts = @tag.posts

    respond_with @posts, each_serializer: PostSerializer
  end

end
