class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:id])
    if @user.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    
  end
end
