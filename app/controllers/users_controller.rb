class UsersController < ApplicationController

  def new
    # registration form
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default(account_url)
    else
      render :action => :new
    end
  end
  
  def show
    if params[:id]
      # /users/5
      @user = User.find(params[id])
    else
      # /account
      require_user
      @user = @current_user
    end
  end

end
