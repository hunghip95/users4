class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index,:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:destroy, :index]

  def index
    @users = User.all
  end
  def new
  end
  def show
    @user = User.find(params[:id])
    @cmts = @user.cmts.all
  end
  def create
    @user = User.find_by(name: params[:user][:name])
    if !@user
      @user = User.new(get)
      if @user.save
        log_in @user
        redirect_to @user
      else
        @error = 'Invalid name or email'
        render 'new'
      end
    else
      @error = 'User existed'
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(get)
      redirect_to @user
    else
      render 'edit'
    end
  end
  def destroy
    @a = User.find(params[:id])
    @a.destroy
    render 'welcome/home'
  end
  private
    def get
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end
    
    def correct_user 
      @user = User.find(params[:id])
      if !current_user?(@user)
        render 'welcome/home'
      end
    end
    def admin_user
      redirect_to 'welcome/home' unless current_user.admin?
    end
end
