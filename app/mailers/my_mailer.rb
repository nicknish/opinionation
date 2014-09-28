class MyMailer < ActionMailer::Base
  default from: 'opinionation255@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to the Nation')
  end
end
