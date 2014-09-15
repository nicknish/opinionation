class VotesController < ApplicationController

    respond_to :json

  def create
    @vote = Vote.new(vote_params)
    @vote.user = current_user

    if @vote.save
      render json: @vote, status: :created
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :answer_id)
  end

end
