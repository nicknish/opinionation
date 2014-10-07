class WelcomeEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(user_id)
    MyMailer.welcome_email(user_id).deliver
  end
end