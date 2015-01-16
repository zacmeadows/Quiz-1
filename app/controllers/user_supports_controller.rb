class UserSupportsController < ApplicationController

  def index
    @user_supports = UserSupport.all
  end 

  def new
    @user_support = UserSupport.new
  end

  def create
    @user_support = UserSupport.new user_support_params
    @user_support.save
    redirect_to root_path
  end

  def edit
    @user_support = UserSupport.find params[:id]
  end

  def update
    @user_support = UserSupport.find params[:id]
    if @user_support.update user_support_params
      redirect_to root_path
    else
      render :edit
    end 
  end 

  def destroy
    @user_support = UserSupport.find params[:id]
    @user_support.destroy
    redirect_to root_path
  end

  private

  def user_support_params
    params.require(:user_support).permit(:name, :email, :department, :message)
  end

end
