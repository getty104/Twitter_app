class CreateUsers < ActiveRecord::Migration[5.0]
	def change
		create_table :users do |t|
			t.string :name
			t.string :account
			t.binary :image
			t.string :data_type
			t.string :password_digest
			t.timestamps
		end
	end
end
