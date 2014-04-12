class DashboardController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_membertackle, only: [:show, :edit, :update, :destroy]
  #member_tackles is table name
  #membertackle is model name
  #member_tackle.rb is model file name

  # GET /member_tackles
  # GET /member_tackles.json
  def index
    @member_tackles = MemberTackle.all
  end
  
  # GET /member_tackles/1
  # GET /member_tackles/1.json
  def show
  end

  # GET /member_tackles/new
  def new
    @membertackle = MemberTackle.new
  end

  # GET /member_tackles/1/edit
  def edit
  end

  # POST /member_tackles
  # POST /member_tackles.json
  def create
    @membertackle = MemberTackle.new(member_tackle_params)

    respond_to do |format|
      if @membertackle.save
        format.html { redirect_to @membertackle, notice: 'Your tackle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @membertackle }
      else
        format.html { render action: 'new' }
        format.json { render json: @membertackle.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /member_tackles/1
  # PATCH/PUT /member_tackles/1.json
  def update
    respond_to do |format|
      if @membertackle.update(member_tackle_params)
        format.html { redirect_to @membertackle, notice: 'Your tackle was successfully updates.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @membertackle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_tackles/1
  # DELETE /member_tackles/1.json
  def destory
    @membertackle.destory
    respond_to do |format|
      format.html { redirct_to dashboard_url }
      format.json { head :no_content } 
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_membertackle
      @membertackle = MemberTackle.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through
    def member_tackle_params
      params[:membertackle]
    end
end
