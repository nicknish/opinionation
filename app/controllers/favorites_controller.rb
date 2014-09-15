class FavoritesController < ApplicationController

  respond_to :json

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user

    if @favorite.save
      render json: @favorite, status: :created
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :post_id)
  end

end
