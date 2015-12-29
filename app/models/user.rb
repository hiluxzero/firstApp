class User < ActiveRecord::Base
	belongs_to :city
	has_many :Friend, foreign_key: "user1_id", class_name: "Follow"
	has_many :Fan, foreign_key: "user2_id", class_name: "Follow"
end
