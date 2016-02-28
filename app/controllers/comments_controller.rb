class CommentsController < ApplicationController
  #before_action :require_user, only: [:index,:show, :new, :create]
  #before_action :require_editor, only: [:new, :create, :edit, :update]
  #before_action :require_admin, only: [:destroy]
  def index
    @comment = Comment.new
    @categories = Category.all
    @comments = Comment.all.reverse
    @comment = Comment.new(params[:comment])
  end
  def show
     @categories = Category.all
   end

  def new
    @comment = Comment.new
  end

  def create 
    @comment = Comment.new(comment_params) 
      if @comment.save 
        redirect_to comments_url
      else 
        render 'new' 
      end 
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private 
    def comment_params 
      params.require(:comment).permit(:name, :email, :title, :text) 
    end
end


