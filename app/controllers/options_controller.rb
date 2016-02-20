class OptionsController < ApplicationController

  def index
    @options = Option.all
  end

  def show
  end

  def new
    @option = Option.new
  end

  def edit
    @categories = Category.all
    @category = Category.find(params[:category_id])
    @option = Option.find(params[:id])
  end

  def create
    @category = Category.find(params[:category_id])
    @option = @category.options.create(option_params)

    respond_to do |format|
      if @option.save
        format.html { redirect_to @category, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @option }
        format.js #create.js.erb
      else
        format.html { render :new }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
    @option = Option.find(params[:id]) # не перенаправляется на категорию с нужным id
    
    respond_to do |format|
      if @option.update(option_params)
        format.html { redirect_to @category, notice: 'Comment was successfully updated.' }
        #format.json { render :show, status: :ok, location: @option}
        #format.js
      else
        format.html { render :edit }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @option.destroy
    respond_to do |format|
      format.html { redirect_to options_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = Option.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_params
      params.require(:option).permit(:category_id, :title, :quantity, :price)
    end
end

