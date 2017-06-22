class AddClicks < ActiveRecord::Migration[4.2]
	def change
		add_column :urls, :click, :integer, default: 0
	end
end
