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
    arr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    @sch = Schedule.create(mon: arr, tue: arr, wed: arr, thu: arr, fri: arr, sat: arr, sun: arr)
    @sch.user_id = self.id
    @sch.save
  end
end
