class SandboxMailInterceptor
	def self.delivering_email(message)
    	message.to = [ENV['YOUR_GMAIL']]
	end
end
