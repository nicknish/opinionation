class QuestionReplyEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: 10

  def perform(answer_id, post_id, user_id)
    MyMailer.question_reply_email(answer_id, post_id, user_id).deliver
  end
end
