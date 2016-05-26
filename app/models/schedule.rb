class Schedule < ActiveRecord::Base
	belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
	validates_uniqueness_of :user_id, message: "can not have more than one schedule"
end
