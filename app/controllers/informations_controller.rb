class InformationsController < ApplicationController

  def index
    @categories = Category.all
    @informations = Information.all
  end

  def new
    @categories = Category.all
  end

  def create 
    @information = Information.new(information_params)
    
    if @infromation.save
      redirect_to @infromation
    else
      render action: 'new' 
    end  
  end

  def show
    @categories = Category.all
    @information = Information.find(params[:id])
  end

  def edit
    @categories = Category.all
    @information = Information.find(params[:id])
    #redirect_to :root unless current_user == @article.user
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to @information
    else
      render action: 'edit' 
    end  
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy
    redirect_to informations_path
  end

  private

  def information_params
    params.require(:information).permit(:title, :article, :description, :picture)
  end
#:user_id
end
