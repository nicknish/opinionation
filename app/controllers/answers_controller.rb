class AnswersController < ApplicationController

  respond_to :json

  def index
    @answers = Answer.where(post_id: params[:post_id]).all.order(created_at: :desc)

    respond_with @answers, each_serializer: AnswerSerializer
  end

  def user_answers
    user = User.where(username: params[:id]).first
    @answers = Answer.where(user_id: user.id).all

    respond_with @answers, each_serializer: AnswerSerializer
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    if @answer.save
      render json: @answer, status: :created
    end
    
    mentioned = @answer.mentioned_users
    MentionEmailWorker.perform_async(mentioned, @answer.id)
    QuestionReplyEmailWorker.perform_async(@answer.id, @answer.post.id, @answer.post.user.id)
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :post_id, :user_id)
  end

end
