class ProjectTitansController < ApplicationController
  before_action :set_project_titan, only: [:show, :edit, :update, :destroy]

  # GET /project_titans
  # GET /project_titans.json
  def index
    @project_titans = ProjectTitan.all
  end

  # GET /project_titans/1
  # GET /project_titans/1.json
  def show
  end

  # GET /project_titans/new
  def new
    @project_titan = ProjectTitan.new
  end

  # GET /project_titans/1/edit
  def edit
  end

  # POST /project_titans
  # POST /project_titans.json
  def create
    @project_titan = ProjectTitan.new(project_titan_params)

    respond_to do |format|
      if @project_titan.save
        format.html { redirect_to @project_titan, notice: 'Project titan was successfully created.' }
        format.json { render :show, status: :created, location: @project_titan }
      else
        format.html { render :new }
        format.json { render json: @project_titan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_titans/1
  # PATCH/PUT /project_titans/1.json
  def update
    respond_to do |format|
      if @project_titan.update(project_titan_params)
        format.html { redirect_to @project_titan, notice: 'Project titan was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_titan }
      else
        format.html { render :edit }
        format.json { render json: @project_titan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_titans/1
  # DELETE /project_titans/1.json
  def destroy
    @project_titan.destroy
    respond_to do |format|
      format.html { redirect_to project_titans_url, notice: 'Project titan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_titan
      @project_titan = ProjectTitan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_titan_params
      params.require(:project_titan).permit(:project_id, :titan_id, :name, :comments)
    end
end
