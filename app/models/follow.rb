class Follow < ActiveRecord::Base
	belongs_to :friend, class_name: 'User', foreign_key: "user1_id"
	belongs_to :fan, class_name: 'User', foreign_key: "user2_id"
end
