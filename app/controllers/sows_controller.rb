class SowsController < ApplicationController
  before_action :set_sow, only: [:show, :edit, :update, :destroy]

  # GET /sows
  # GET /sows.json
  def index
    @sows = Sow.all
  end

  # GET /sows/1
  # GET /sows/1.json
  def show
  end

  # GET /sows/new
  def new
    @sow = Sow.new
  end

  # GET /sows/1/edit
  def edit
  end

  # POST /sows
  # POST /sows.json
  def create
    @sow = Sow.new(sow_params)

    respond_to do |format|
      if @sow.save
        format.html { redirect_to @sow, notice: 'Sow was successfully created.' }
        format.json { render :show, status: :created, location: @sow }
      else
        format.html { render :new }
        format.json { render json: @sow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sows/1
  # PATCH/PUT /sows/1.json
  def update
    respond_to do |format|
      if @sow.update(sow_params)
        format.html { redirect_to @sow, notice: 'Sow was successfully updated.' }
        format.json { render :show, status: :ok, location: @sow }
      else
        format.html { render :edit }
        format.json { render json: @sow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sows/1
  # DELETE /sows/1.json
  def destroy
    @sow.destroy
    respond_to do |format|
      format.html { redirect_to sows_url, notice: 'Sow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sow
      @sow = Sow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sow_params
      params.require(:sow).permit(:project_id, :A1_prop, :A1_est, :A2_prop, :A2_est, :SA_prop, :SA_est, :MGR_prop, :MGR_est, :MD_prop, :MD_est, :VP_prop, :VP_est, :PRES_prop, :PRES_est, :EXNET_prop, :EXNET_est, :OPS_prop, :OPS_est, :INT_prop, :INT_est)
    end
end
