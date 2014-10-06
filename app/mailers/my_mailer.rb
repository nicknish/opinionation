class MyMailer < ActionMailer::Base
  default from: 'opinionation255@gmail.com'

  def welcome_email(user_id)
    @user = User.where(id: user_id).first
    mail(to: @user.email, subject: 'Welcome to the Nation')
  end

	def mention_email(user_id, answer_id)
	  @user = User.where(id: user_id).first
	  @answer = Answer.where(id: answer_id).first

	  mail(to: @user.email, subject: "#{@answer.user.username} mentioned you on OpinioNation")
	end
end
