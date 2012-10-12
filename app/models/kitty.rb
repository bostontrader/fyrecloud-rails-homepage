class Kitty < ActiveRecord::Base
	attr_accessible :name, :lives_consumed, :birthdate
end
