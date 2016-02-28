class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  before_action :require_editor, only: [:new, :create, :edit, :update]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  def index
    @categories = Category.all
    @albums = Album.all
  end

  def show
    @categories = Category.all
  end

  def new
    @categories = Category.all
    @album = Album.new
  end

  def edit
    @categories = Category.all
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      #@album = Album.find(params[:id])
      @album = AlbumDecorator.decorate(Album.find(params[:id]))
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :image)
    end
end

