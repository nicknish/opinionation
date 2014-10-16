class WelcomeEmailWorker
  include Sidekiq::Worker
  sidekiq_options retry: 10

  def perform(user_id)
    MyMailer.welcome_email(user_id).deliver
  end
end