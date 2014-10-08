class QuestionReplyEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(answer_id, post_id, user_id)
    x = MyMailer.question_reply_email(answer_id, post_id, user_id)
    if x.class != ActionMailer::Base::NullMail
      x.deliver
    end
  end
end
