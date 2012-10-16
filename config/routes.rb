Railsapp::Application.routes.draw do

	root :to => 'static#index'

	# See matharvard.ca/posts/2011/aug/22/contact-form-in-rails-3/
	match 'contact' => 'contact#new', :as => 'contact', :via => :get
	match 'contact' => 'contact#create', :as => 'contact', :via => :post

	match 'amsler' => 'amsler#index'
	match 'amsler/demo' => 'amsler#demo'

	# This is a legacy wild controller route that's not recommended for RESTful applications.
	# Note: This route will make all actions in every controller accessible via GET requests.
	# match ':controller(/:action(/:id))(.:format)'
	match ':action' => 'static#:action'

end
