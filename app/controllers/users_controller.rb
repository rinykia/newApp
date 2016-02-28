class UsersController < ApplicationController
  before_action :require_editor, only: [:edit, :update]
  before_action :require_admin, only: [:edit, :update, :destroy]
  def index
    @categories = Category.all
    @users = User.all
  end

  def edit
   @categories = Category.all    
    @user = User.find(params[:id])
  end


  def new
  @categories = Category.all    
    @user = User.new
  end 

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_url
      else
        redirect_to signup_url
    end
  end 
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_url,
          notice: "User  was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors,
          status: :unprocessable_entity }
      end
    end
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
  end 
end
