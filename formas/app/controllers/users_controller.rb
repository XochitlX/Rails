class UsersController < ApplicationController
  # def index

  # end
  def new
    p "primera vista"
    @user = User.new
  end

  def create
    p "en el create***" * 20
    p params
    @user = User.new(user_params)
    # @user = User.new(:username => params[:username], 
    #                 :email => params[:email],
    #                 :password => params[:password])
    p @user
    if @user.save
      p "CREADO"
      redirect_to new_user_path
      #redirect_to edit_user_path(@user)
    else
      p "BUUUU"
      render :new
    end

  end

  def edit
    p "EDITTTT" * 20
    p params
    @user = User.find(params[:id])
    #@user = User.new
  end

  def update
    p "UPDATE " * 20
    p params
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_path(@user)
    else
      render :edit
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)    
  end

end
