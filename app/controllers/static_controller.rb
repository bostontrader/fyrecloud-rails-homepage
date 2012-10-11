class StaticController < ApplicationController

	# We don't need these methods defined in order to actually serve a static document.
	# We do however need them to assign the lables to the nave buttons.

	def android
		@nav_menu_label = "Android"
	end

	def archaeology
		@nav_menu_label = "Archaeology"
	end

	def bitcoins
		@nav_menu_label = "Bitcoins"
	end

	def ckwestor
		@nav_menu_label = "Ckwestor"
	end

	def contact
		@nav_menu_label = "Contact us"
	end

	def index
		@nav_menu_label = "Home"
	end

	def rails
		@nav_menu_label = "Rails"
	end

	def redstar
		@nav_menu_label = "Redstar Exchange"
	end

end
