class CreateKitties < ActiveRecord::Migration

	def up
		create_table :kitties do |t|
			t.string   :name
			t.integer  :lives_consumed
			t.datetime :birthdate
		end
	end

	def down
		drop_table :kitties
	end

end
