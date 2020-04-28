class CreateReadings < ActiveRecord::Migration[5.1]
	def change
		create_table :readings do |t|
			t.references :user, foreign_key: true
			t.references :book, foreign_key: true
			t.datetime :date
			t.timestamps
		end
	end
end
