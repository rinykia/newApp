class SlidersController < ApplicationController
 # before_action :set_album, only: [:show, :edit, :update, :destroy]
  before_action :require_editor, only: [:new, :create, :edit, :update]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  def index
    @categories = Category.all
    
  end

  def show
    @categories = Category.all
    @slider = Slider.find(params[:id])
  end

  def new
    @categories = Category.all
    @slider = Slider.new
  end

  def edit
    @categories = Category.all
    @slider = Slider.find(params[:id])
  end

  def create
    @slider = Slider.new(slider_params)

    respond_to do |format|
      if @slider.save
        format.html { redirect_to @slider, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @slider }
      else
        format.html { render :new }
        format.json { render json: @slider.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @slider = Slider.find(params[:id])
    respond_to do |format|
      if @slider.update(slider_params)
        format.html { redirect_to @slider, notice: 'Slider was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider }
      else
        format.html { render :edit }
        format.json { render json: @slider.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @slider = Slider.find(params[:id])
    @slider.destroy
    respond_to do |format|
      format.html { redirect_to sliders_url, notice: 'Slider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider
      @slider = Slider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_params
      params.require(:slider).permit(:slide, :more_url, :article)
    end
end


