class TitanRolesController < ApplicationController
  before_action :set_titan_role, only: [:show, :edit, :update, :destroy]

  # GET /titan_roles
  # GET /titan_roles.json
  def index
    @titan_roles = TitanRole.all
  end

  # GET /titan_roles/1
  # GET /titan_roles/1.json
  def show
  end

  # GET /titan_roles/new
  def new
    @titan_role = TitanRole.new
  end

  # GET /titan_roles/1/edit
  def edit
  end

  # POST /titan_roles
  # POST /titan_roles.json
  def create
    @titan_role = TitanRole.new(titan_role_params)

    respond_to do |format|
      if @titan_role.save
        format.html { redirect_to @titan_role, notice: 'Titan role was successfully created.' }
        format.json { render :show, status: :created, location: @titan_role }
      else
        format.html { render :new }
        format.json { render json: @titan_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titan_roles/1
  # PATCH/PUT /titan_roles/1.json
  def update
    respond_to do |format|
      if @titan_role.update(titan_role_params)
        format.html { redirect_to @titan_role, notice: 'Titan role was successfully updated.' }
        format.json { render :show, status: :ok, location: @titan_role }
      else
        format.html { render :edit }
        format.json { render json: @titan_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titan_roles/1
  # DELETE /titan_roles/1.json
  def destroy
    @titan_role.destroy
    respond_to do |format|
      format.html { redirect_to titan_roles_url, notice: 'Titan role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titan_role
      @titan_role = TitanRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titan_role_params
      params.require(:titan_role).permit(:titan_id, :role_id, :started_at, :ended_at)
    end
end
