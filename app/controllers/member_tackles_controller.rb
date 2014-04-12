class MemberTacklesController < ApplicationController
  before_filter :authenticate_user!  
  before_action :set_member_tackles, only: [:show, :edit, :update, :destroy]

  # GET /member_tackles  
  def index
    @member_tackles = MemberTackle.all
  end

  # GET /member_tackles/1
  def show
  end

  # GET /member_tackles/1/edit
  def edit
  end

  # GET /member_tackles/new
  def new
    @member_tackles = MemberTackle.new
  end
  
  # POST /member_tackles
  def create
    @member_tackles = MemberTackle.new(member_tackles_params)

    respond_ to do |format|
      if @member_tackles.save
        format.html { redirect_to @member_tackles, notice: 'Your tackle was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
  
  # PATCH/PUT /member_tackles/1
  def update
    respond_to do |format|
      if @member_tackles.update(member_tackles_params)
        format.html { redirect_to @member_tackles, notice: 'Your tackle was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /member_tackles/1
  def destory
    @member_tackles.destory
    respond_to do |format|
      format.html { redirect_to member_tackles_url }
    end
  end 
  
  private
    # Use callbacks to share a common setup or contraints between action.
    def set_member_tackles
      @member_tackles = MemberTackles.find(params[:id])
    end

    # Never trust parametes from the scary internet, only allow the white list through.
    def member_tackles_params
      params.require(:member_tackles).permit(:name, :description, :size, :quantity, :color, :modelnumber, :shape, :length, :weight, :brand, :price, :user_id, :tackle_type_id)
    end
end
