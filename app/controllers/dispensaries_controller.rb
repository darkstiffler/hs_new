class DispensariesController < ApplicationController
 # Get /users - display all users
  def index
    @users = User.all
  end

  # Get /users/:id - display detail for user <id>
  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find params[:id]
  end

  def create
    @user = User.create user_params

    # this will redirect the user    
     if @user
      redirect_to users_path, status: 303
    else
      render :new
    end
  end

  def update
    @user = User.find params[:id]
    
    if @user.update_attributes(user_params)
      redirect_to users_path, status: 303
    else
      render :edit
    end
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    
    redirect_to users_path, status: 303
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end