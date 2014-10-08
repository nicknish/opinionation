require 'sandbox_mail_interceptor'
ActionMailer::Base.register_interceptor(SandboxMailInterceptor) #if 
#Rails.env.development?