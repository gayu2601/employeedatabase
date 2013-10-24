class HodsController < ApplicationController
  before_action :set_hod, only: [:show, :edit, :update, :destroy]

  # GET /hods
  # GET /hods.json
  def index
    @hods = Hod.all
  end

  # GET /hods/1
  # GET /hods/1.json
  def show
  end

  # GET /hods/new
  def new
    @hod = Hod.new
  end

  # GET /hods/1/edit
  def edit
  end

  # POST /hods
  # POST /hods.json
  def create
    @hod = Hod.new(hod_params)

    respond_to do |format|
      if @hod.save
        format.html { redirect_to @hod, notice: 'Hod was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hod }
      else
        format.html { render action: 'new' }
        format.json { render json: @hod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hods/1
  # PATCH/PUT /hods/1.json
  def update
    respond_to do |format|
      if @hod.update(hod_params)
        format.html { redirect_to @hod, notice: 'Hod was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hods/1
  # DELETE /hods/1.json
  def destroy
    @hod.destroy
    respond_to do |format|
      format.html { redirect_to hods_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hod
      @hod = Hod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hod_params
      params.require(:hod).permit(:employee_id, :department_id)
    end
end
