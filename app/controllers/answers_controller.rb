class AnswersController < ApplicationController

  respond_to :json

  def index
    @answers = Answer.where(post_id: params[:post_id]).all.order(created_at: :desc)

    respond_with @answers, each_serializer: AnswerSerializer
  end

  def user_answers
    @answers = Answer.where(user_id: params[:id]).all

    respond_with @answers, each_serializer: AnswerSerializer
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
