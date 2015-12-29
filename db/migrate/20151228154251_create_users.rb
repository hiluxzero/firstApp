class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :name
			t.string :email
			t.string :password_digest
			t.date :birthday
			t.references :city
			t.string :fb_id
			t.string :description
			t.string :photo
			t.string :gender
			t.string :facebook
			t.string :twitter
			t.string :role
			t.timestamps null: false
		end
	end
end


