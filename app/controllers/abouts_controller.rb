class AboutsController < ApplicationController
  def index
    @categories = Category.all
    @abouts = About.all
  end

  def new
    @categories = Category.all
  end

  def create 
    @about = About.new(about_params)
    
    if @about.save
      redirect_to @about
    else
      render action: 'new' 
    end  
  end

  def edit
    @categories = Category.all
    @about = About.find(params[:id])
    #redirect_to :root unless current_user == @article.user
  end

  def update
    @about = About.find(params[:id])
    if @about.update(about_params)
      redirect_to @about
    else
      render action: 'edit' 
    end  
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to abouts_path
  end

  private

  def about_params
    params.require(:about).permit(:title, :article, :image)
  end

end
