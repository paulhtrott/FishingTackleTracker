class MemberTacklesController < ApplicationController
  before_filter :authenticate_user!  
  before_action :set_member_tackles, only: [:show, :edit, :update, :destroy]

  # GET /member_tackles  
  def index
    @member_tackles = MemberTackle.where(:member_tackles => { :user_id => current_user.id }).order(:name)
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
    @member_tackles.user_id = current_user.id
    respond_to do |format|
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
  def destroy
    @member_tackles.destroy
    respond_to do |format|
      format.html { redirect_to member_tackles_url }
    end
  end 
  
  private
    # Use callbacks to share a common setup or contraints between action.
    def set_member_tackles
      @member_tackles = MemberTackle.find(params[:id])
    end

    # Never trust parametes from the scary internet, only allow the white list through.
    def member_tackles_params
      params.require(:member_tackle).permit(:name, :description, :size, :quantity, :color, :modelnumber, :shape, :length, :weight, :brand, :quantity_wanted, :price, :tackle_type_id, :tackle_img)
    end
end
