class MentionEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: 10

  def perform(mentioned, answer_id)
    if mentioned != nil
      mentioned.each do |user_id|
        MyMailer.mention_email(user_id, answer_id).deliver
      end
    end
  end
end
