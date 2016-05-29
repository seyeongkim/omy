class GroupsController < ApplicationController
  before_action :require_login
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.all
    @group = Group.new

  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    
    unless UsersGroup.where(member_id:current_user.id).where(group_id: params[:id]).first
      @membership = UsersGroup.new(member_id:current_user.id, group_id:params[:id])
      @membership.save
    end
    
    @memberships = UsersGroup.where(group_id:params[:id])
  end
  
  
  def find
    if k = Group.where(:name => params[:g_name]).take
      redirect_to "/groups/#{k.id}"
    else
      flash[:notice] = "그룹이 없습니다. 정확한 이름을 검색해주세요"
      redirect_to :back
    end
  end


  # GET /groups/new
  def new

    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end

 
  #   @membership = UseersGroup.where(group_id:id)
  # member = UsersGroup.length
  #     for k in 0 .. 13
  #       for j in 0 .. 6
		#       for i in 0 .. member
		# 	comparison[k][j] += member[i].time{#k}'[j]
		# 	    end
		# 	  end
		# 	end
  #   end
end