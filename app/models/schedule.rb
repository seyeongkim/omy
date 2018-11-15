class Schedule < ActiveRecord::Base
	belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
	validates_uniqueness_of :user_id, message: "can not have more than one schedule"
<<<<<<< HEAD
    serialize :mon,Array
    serialize :tue,Array
    serialize :wed,Array
    serialize :thu,Array
    serialize :fri,Array
    serialize :sat,Array
    serialize :sun,Array
=======
    serialize :time1,Array
    serialize :time2,Array
    serialize :time3,Array
    serialize :time4,Array
    serialize :time5,Array
    serialize :time6,Array
    serialize :time7,Array
    serialize :time8,Array
    serialize :time9,Array
    serialize :time10,Array
    serialize :time11,Array
    serialize :time12,Array
    serialize :time13,Array
    serialize :time14,Array
>>>>>>> 20f47f33b828d68e2ce502c1f66332d278983faf
end
