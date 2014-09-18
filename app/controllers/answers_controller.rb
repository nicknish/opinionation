class AnswersController < ApplicationController

  respond_to :json

  def index
    @answers = Answer.where(post_id: params[:post_id]).all

    respond_with @answers, each_serializer: AnswerSerializer
  end

  def current_user_answers
    @answers = Answer.where(user_id: current_user.id).all

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
