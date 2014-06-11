class AlbumsController < ApplicationController
  # before_action :set_album, only: [:show, :edit, :update, :destroy]

  # GET /albums
  # GET /albums.json
  def index 
    @galery = Galery.find(params[:galery_id])   
    @albums = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show  
    @galery = Galery.find(params[:galery_id])    
    @album = @galery.albums.find(params[:id])
  end

  # GET /albums/new
  def new  
    @galery = Galery.find(params[:galery_id]) 
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
    @galery = Galery.find(params[:galery_id])
    @album = @galery.albums.find(params[:id])    
  end

  # POST /albums
  # POST /albums.json
  def create 
    @galery = Galery.find(params[:galery_id])   
    @album = @galery.albums.create(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to galery_albums_path, notice: 'Album was successfully created.' }
        format.json { render action: 'index', status: :created, location: @album }
      else
        format.html { render action: 'new' }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    @galery = Galery.find(params[:galery_id])
    @album = @galery.albums.find(params[:id])
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to galery_albums_path, notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @galery = Galery.find(params[:galery_id])
    @album = @galery.albums.find(params[:id])
    @album.destroy
    respond_to do |format|
      format.html { redirect_to galery_albums_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      #@album = Album.find(params[:album_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:name, :image, :galery_id)
    end
end
