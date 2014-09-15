class AnswersController < ApplicationController

  respond_to :json

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user

    if @answer.save
      render json: @answer, status: :created
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :post_id, :user_id)
  end

end
