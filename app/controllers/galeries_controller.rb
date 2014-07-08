class GaleriesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_galery, only: [:show, :edit, :update, :destroy]

  # GET /galeries
  # GET /galeries.json
  def index
    @galeries = Galery.all
  end

  # GET /galeries/1
  # GET /galeries/1.json
  def show
    @galery = Galery.find(params[:id])
    
  end

  # GET /galeries/new
  def new
    @galery = Galery.new
    @galery.albums.build
  end

  # GET /galeries/1/edit
  def edit
  end

  # POST /galeries
  # POST /galeries.json
  def create
    @galery = Galery.new(galery_params)

    respond_to do |format|
      if @galery.save
        format.html { redirect_to galeries_path, notice: 'Galery berhasil dibuat.' }
        format.json { render action: 'index', status: :created, location: @galery }
      else
        format.html { render action: 'new' }
        format.json { render json: @galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeries/1
  # PATCH/PUT /galeries/1.json
  def update
    respond_to do |format|
      if @galery.update(galery_params)
        format.html { redirect_to galeries_path, notice: 'Galery Berhasil di update.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeries/1
  # DELETE /galeries/1.json
  def destroy
    @galery.destroy
    respond_to do |format|
      format.html { redirect_to galeries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galery
      @galery = Galery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galery_params
      params.require(:galery).permit(:name, albums_attributes: [:id, :name, :image])
    end
end
