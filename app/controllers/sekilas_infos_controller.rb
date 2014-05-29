class SekilasInfosController < ApplicationController
  before_action :set_sekilas_info, only: [:show, :edit, :update, :destroy]

  # GET /sekilas_infos
  # GET /sekilas_infos.json
  def index
    @sekilas_infos = SekilasInfo.all
  end

  # GET /sekilas_infos/1
  # GET /sekilas_infos/1.json
  def show
  end

  # GET /sekilas_infos/new
  def new
    @sekilas_info = SekilasInfo.new
  end

  # GET /sekilas_infos/1/edit
  def edit
  end

  # POST /sekilas_infos
  # POST /sekilas_infos.json
  def create
    @sekilas_info = SekilasInfo.new(sekilas_info_params)

    respond_to do |format|
      if @sekilas_info.save
        format.html { redirect_to @sekilas_info, notice: 'Sekilas info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sekilas_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @sekilas_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sekilas_infos/1
  # PATCH/PUT /sekilas_infos/1.json
  def update
    respond_to do |format|
      if @sekilas_info.update(sekilas_info_params)
        format.html { redirect_to @sekilas_info, notice: 'Sekilas info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sekilas_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sekilas_infos/1
  # DELETE /sekilas_infos/1.json
  def destroy
    @sekilas_info.destroy
    respond_to do |format|
      format.html { redirect_to sekilas_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sekilas_info
      @sekilas_info = SekilasInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sekilas_info_params
      params.require(:sekilas_info).permit(:title, :content)
    end
end
