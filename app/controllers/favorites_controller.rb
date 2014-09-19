class FavoritesController < ApplicationController

  respond_to :json

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorite
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user

    if @favorite.save
      render json: @favorite, status: :created
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      render json: @favorite, status: :ok
    else
      render json: @favorite.errors, status: :internal_server_error
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :post_id)
  end

end
