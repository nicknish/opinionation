class MentionEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(mentioned, answer_id)
    if mentioned != nil
      mentioned.each do |user_id|
        MyMailer.mention_email(user_id, answer_id)
        if x.class != ActionMailer::Base::NullMail
          x.deliver
        end
      end
    end
  end
end
