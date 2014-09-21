class VotesController < ApplicationController

    respond_to :json

  def create
    @vote = Vote.new(vote_params)
    @vote.user = current_user

    if @vote.save
      render json: @vote, status: :created
      @vote.score_maker
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    if @vote.destroy
      render json: @vote, status: :ok
    else
      render json: @vote.errors, status: :internal_server_error
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :answer_id)
  end

end
