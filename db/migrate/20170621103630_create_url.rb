class CreateUrl < ActiveRecord::Migration[4.2]
	def change
		create_table :urls do |t|
			t.string :long_url
			t.string :short_url
			t.timestamps
		end
	end
end
