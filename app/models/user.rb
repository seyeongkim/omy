class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :make_schedule
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :schedule
  has_and_belongs_to_many :groups
 
   private
  
  def make_schedule
    # @sch = Schedule.new
    # @sch.user_id = self.id
    arr = [0,0,0,0,0,0,0]
    @sch = Schedule.create(time1: arr, time2: arr, time3: arr, time4: arr, time5: arr, time6: arr, time7: arr, time8: arr, time9: arr, time10: arr, time11: arr, time12: arr ,time13: arr,time14: arr)
    @sch.user_id = self.id
    @sch.save
  end
end
