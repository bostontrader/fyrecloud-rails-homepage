class NotificationsMailer < ActionMailer::Base

	default :from => "fyreman@fyrecloud.com"
	default :to   => "fyreman@fyrecloud.com"

	def new_message(message)
		@message = message
		mail(:subject => "#{message.subject}")
	end

end
