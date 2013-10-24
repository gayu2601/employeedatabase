class NonteachingsController < ApplicationController
  before_action :set_nonteaching, only: [:show, :edit, :update, :destroy]

  # GET /nonteachings
  # GET /nonteachings.json
  def index
    @nonteachings = Nonteaching.all
  end

  # GET /nonteachings/1
  # GET /nonteachings/1.json
  def show
  end

  # GET /nonteachings/new
  def new
    @nonteaching = Nonteaching.new
  end

  # GET /nonteachings/1/edit
  def edit
  end

  # POST /nonteachings
  # POST /nonteachings.json
  def create
    @nonteaching = Nonteaching.new(nonteaching_params)

    respond_to do |format|
      if @nonteaching.save
        format.html { redirect_to @nonteaching, notice: 'Nonteaching was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nonteaching }
      else
        format.html { render action: 'new' }
        format.json { render json: @nonteaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nonteachings/1
  # PATCH/PUT /nonteachings/1.json
  def update
    respond_to do |format|
      if @nonteaching.update(nonteaching_params)
        format.html { redirect_to @nonteaching, notice: 'Nonteaching was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nonteaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nonteachings/1
  # DELETE /nonteachings/1.json
  def destroy
    @nonteaching.destroy
    respond_to do |format|
      format.html { redirect_to nonteachings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nonteaching
      @nonteaching = Nonteaching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nonteaching_params
      params.require(:nonteaching).permit(:employee_id, :post)
    end
end
