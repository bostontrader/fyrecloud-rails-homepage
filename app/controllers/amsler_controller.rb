class AmslerController < ApplicationController

	layout "static"

	def index
	end

	def demo

		kitty_names = [
			"abby",
			"agent orange",
			"ajax",
			"babe",
			"booboo",
			"caesar",
			"caspar",
			"devil",
			"diablo",
			"fluffy",
			"kitty",
			"midnight",
			"mittens",
			"pussy",
			"snicker",
			"tiger",
			"snookey",
			"whiskers"
		]

		@kitty = Kitty.new(
			{
				:name=>kitty_names.sample(1).join, 
				:lives_consumed=> [0,1,2,3,4,5,6,7,8,9].sample(1).join,
				:birthdate=>Time.now
			}
		)

		@kitty.save
		@kitties = Kitty.order("birthdate DESC").limit(10)
	end

end
