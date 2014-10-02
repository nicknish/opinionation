class MyMailer < ActionMailer::Base
  default from: 'opinionation255@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to the Nation')
  end

	def mention_email(user, answer)
	  @user = user
	  @answer = answer

	  mail(to: @user.email, subject: "#{@answer.user.username} mentioned you on OpinioNation")
	end
end
