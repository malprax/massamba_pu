class SuaraRakyatsController < ApplicationController
  before_action :set_suara_rakyat, only: [:show, :edit, :update, :destroy]

  # GET /suara_rakyats
  # GET /suara_rakyats.json
  def index
    @suara_rakyats = SuaraRakyat.all
  end

  # GET /suara_rakyats/1
  # GET /suara_rakyats/1.json
  def show
  end

  # GET /suara_rakyats/new
  def new
    @suara_rakyat = SuaraRakyat.new
  end

  # GET /suara_rakyats/1/edit
  def edit
  end

  # POST /suara_rakyats
  # POST /suara_rakyats.json
  def create
    @suara_rakyat = SuaraRakyat.new(suara_rakyat_params)

    respond_to do |format|
      if @suara_rakyat.save
        format.html { redirect_to @suara_rakyat, notice: 'Suara rakyat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @suara_rakyat }
      else
        format.html { render action: 'new' }
        format.json { render json: @suara_rakyat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suara_rakyats/1
  # PATCH/PUT /suara_rakyats/1.json
  def update
    respond_to do |format|
      if @suara_rakyat.update(suara_rakyat_params)
        format.html { redirect_to @suara_rakyat, notice: 'Suara rakyat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @suara_rakyat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suara_rakyats/1
  # DELETE /suara_rakyats/1.json
  def destroy
    @suara_rakyat.destroy
    respond_to do |format|
      format.html { redirect_to suara_rakyats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suara_rakyat
      @suara_rakyat = SuaraRakyat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suara_rakyat_params
      params.require(:suara_rakyat).permit(:name, :address, :categori_suara_id, :comment)
    end
end
