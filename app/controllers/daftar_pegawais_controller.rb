class DaftarPegawaisController < ApplicationController
  before_action :set_daftar_pegawai, only: [:show, :edit, :update, :destroy]

  # GET /daftar_pegawais
  # GET /daftar_pegawais.json
  def index
    @daftar_pegawais = DaftarPegawai.all
  end

  # GET /daftar_pegawais/1
  # GET /daftar_pegawais/1.json
  def show
  end

  # GET /daftar_pegawais/new
  def new
    @daftar_pegawai = DaftarPegawai.new
  end

  # GET /daftar_pegawais/1/edit
  def edit
  end

  # POST /daftar_pegawais
  # POST /daftar_pegawais.json
  def create
    @daftar_pegawai = DaftarPegawai.new(daftar_pegawai_params)

    respond_to do |format|
      if @daftar_pegawai.save
        format.html { redirect_to @daftar_pegawai, notice: 'Daftar pegawai was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daftar_pegawai }
      else
        format.html { render action: 'new' }
        format.json { render json: @daftar_pegawai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daftar_pegawais/1
  # PATCH/PUT /daftar_pegawais/1.json
  def update
    respond_to do |format|
      if @daftar_pegawai.update(daftar_pegawai_params)
        format.html { redirect_to @daftar_pegawai, notice: 'Daftar pegawai was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daftar_pegawai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daftar_pegawais/1
  # DELETE /daftar_pegawais/1.json
  def destroy
    @daftar_pegawai.destroy
    respond_to do |format|
      format.html { redirect_to daftar_pegawais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daftar_pegawai
      @daftar_pegawai = DaftarPegawai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daftar_pegawai_params
      params.require(:daftar_pegawai).permit(:name, :nip, :pangkat_id, :golongan_pangkat, :jabatan_id)
    end
end
