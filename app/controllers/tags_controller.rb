class TagsController < ApplicationController

  respond_to :html, :json

  def show
    @tag = Tag.where(name: params[:id]).first
    @posts = @tag.posts.order('created_at DESC').paginate(page: params[:page], per_page: 12)

    respond_with @posts, each_serializer: PostSerializer
  end

end
