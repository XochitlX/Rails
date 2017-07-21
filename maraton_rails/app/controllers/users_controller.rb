class UsersController < ApplicationController

  def index
    
  end

  def new
    p "entro a new*"* 10
    p @user = User.new
  end

  def show
    
  end

  def create
    p "en el createee" * 20
    p params
    p @user = User.new(user_params)

    if @user.save
      p "CREADO"
      redirect_to users_log_path
      #redirect_to edit_user_path(@user)
    else
      p "BUUUU"
      render :new
    end
  end

  def log
    #@user = User.find(params[:id])
    p params  
  end

  def log_in
    p "Con sesionnn **** " * 10
    p email = params[:user][:email]
    p password = params[:user][:password]

    if user = User.find_by(email: email, password: password)
      #p "inicia sesion y escoge deck"
      #
      p @user = user.id
      redirect_to deck_show_path(@user)
    else
      #p "root"
      redirect_to users_log_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)    
  end
end