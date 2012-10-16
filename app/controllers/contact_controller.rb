# Courtesy of matharvard.ca/posts/2011/aug/22/contact-form-in-rails-3/
class ContactController < ApplicationController

	layout "static"

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(params[:message])

		if @message.valid?
			NotificationsMailer.new_message(@message).deliver
			redirect_to(root_path, :notice=>"Message was succesfuly sent.")
		else
			flash.now.alert = "Please fill in all of the fields."
			render :new
		end

	end

end
