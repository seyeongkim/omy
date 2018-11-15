class SchedulesController < ApplicationController
  before_action :require_login
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    #@schedule = Schedule.new
<<<<<<< HEAD
     @schedule = current_user.schedule
=======
    @schedule = current_user.schedule
>>>>>>> 20f47f33b828d68e2ce502c1f66332d278983faf
    @schedules = Schedule.all
    @users = User.all
    @memberships= UsersGroup.where(member_id: current_user.id)
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    #@schedule = Schedule.new

     
  end

  # GET /schedules/1/edit
  def edit
  end
  
  def schedule_status
    @schedule = current_user.schedule
<<<<<<< HEAD
    if @schedule.nil? || @schedule.mon.count == 0
      arr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      @schedule = current_user.schedule.create(mon: arr, tue: arr, wed: arr, thu: arr, fri: arr, sat: arr, sun: arr)
    end

    if params[:s_id].include?('1')
     @schedule.mon[params[:s_id][0].ord - 97] = params[:state].to_i
     
    
    elsif params[:s_id].include?('2')
      @schedule.tue[params[:s_id][0].ord - 97] = params[:state].to_i

    elsif params[:s_id].include?('3')
      @schedule.wed[params[:s_id][0].ord - 97] = params[:state].to_i

    elsif params[:s_id].include?('4')
      @schedule.thu[params[:s_id][0].ord - 97] = params[:state].to_i

    elsif params[:s_id].include?('5')
      @schedule.fri[params[:s_id][0].ord - 97] = params[:state].to_i

    elsif params[:s_id].include?('6')
      @schedule.sat[params[:s_id][0].ord - 97] = params[:state].to_i
 
    elsif params[:s_id].include?('7')
      @schedule.sun[params[:s_id][0].ord - 97] = params[:state].to_i
=======
    if @schedule.nil? || @schedule.time1.count == 0
      arr = [0,0,0,0,0,0,0]
      @schedule = current_user.schedule.create(time1: arr, time2: arr, time3: arr, time4: arr, time5: arr, time6: arr, time7: arr, time8: arr, time9: arr, time10: arr, time11: arr, time12: arr, time13: arr, time14: arr)
    end

    if params[:s_id].include?('a')
     @schedule.time1[params[:s_id][1..-1].to_i] = params[:state].to_i
     
    
    elsif params[:s_id].include?('b')
      @schedule.time2[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('c')
      @schedule.time3[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('d')
      @schedule.time4[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('e')
      @schedule.time5[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('f')
      @schedule.time6[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('g')
      @schedule.time7[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('h')
      @schedule.time8[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('i')
      @schedule.time9[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('j')
      @schedule.time10[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('k')
      @schedule.time11[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('l')
      @schedule.time12[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('m')
      @schedule.time13[params[:s_id][1..-1].to_i] = params[:state].to_i

    elsif params[:s_id].include?('n')
      @schedule.time14[params[:s_id][1..-1].to_i] = params[:state].to_i
>>>>>>> 20f47f33b828d68e2ce502c1f66332d278983faf
  
    end
    
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # POST /schedules
  # POST /schedules.json
  def create
    # @schedule = Schedule.new
    # i = 0
    # for i in 0 .. 13  
    # @schedule.mon[i] = params[:mon]
    # @schedule.tue[i] = params[:tue]
    # @schedule.wed[i] = params[:wed]
    # @schedule.thu[i] = params[:thu]
    # @schedule.fri[i] = params[:fri]
    # @schedule.sat[i] = params[:sat]
    # @schedule.sun[i] = params[:sun]
    # @schedule.user_id = current_user.id
    # end

    # respond_to do |format|
    #   if @schedule.save
    #     format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
    #     format.json { render :show, status: :created, location: @schedule }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @schedule.errors, status: :unprocessable_entity }
    #   end
    end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:user_id, :content)
    end
end
