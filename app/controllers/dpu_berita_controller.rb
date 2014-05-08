class DpuBeritaController < ApplicationController
  before_action :set_dpu_beritum, only: [:show, :edit, :update, :destroy]

  # GET /dpu_berita
  # GET /dpu_berita.json
  def index
    @dpu_berita = DpuBeritum.all
  end

  # GET /dpu_berita/1
  # GET /dpu_berita/1.json
  def show
  end

  # GET /dpu_berita/new
  def new
    @dpu_beritum = DpuBeritum.new
  end

  # GET /dpu_berita/1/edit
  def edit
  end

  # POST /dpu_berita
  # POST /dpu_berita.json
  def create
    @dpu_beritum = DpuBeritum.new(dpu_beritum_params)

    respond_to do |format|
      if @dpu_beritum.save
        format.html { redirect_to @dpu_beritum, notice: 'Dpu beritum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dpu_beritum }
      else
        format.html { render action: 'new' }
        format.json { render json: @dpu_beritum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dpu_berita/1
  # PATCH/PUT /dpu_berita/1.json
  def update
    respond_to do |format|
      if @dpu_beritum.update(dpu_beritum_params)
        format.html { redirect_to @dpu_beritum, notice: 'Dpu beritum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dpu_beritum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dpu_berita/1
  # DELETE /dpu_berita/1.json
  def destroy
    @dpu_beritum.destroy
    respond_to do |format|
      format.html { redirect_to dpu_berita_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dpu_beritum
      @dpu_beritum = DpuBeritum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dpu_beritum_params
      params.require(:dpu_beritum).permit(:title, :content)
    end
end
