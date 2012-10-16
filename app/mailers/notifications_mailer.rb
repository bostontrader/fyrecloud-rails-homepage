class NotificationsMailer < ActionMailer::Base

	default :to   => "fyreman@fyrecloud.com"

	def new_message(message)
		@message = message
		mail(:from =>"#{message.from}", :subject => "#{message.subject}")
	end

end
