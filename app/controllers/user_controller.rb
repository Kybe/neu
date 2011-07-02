class UserController < ApplicationController
  def index
    @title = "Temporary View"
    @users = User.find(:all)
  end

  def register
    @title = "Register"

    if request.post?
      @user = User.new(params[:user])
      if @user.save
        flash[:notice] = "User with login #{@user.screen_name} created!"
        redirect_to :action => :index
      end
    end
  end

  def login
  end

  def logout
  end

def admin_login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Admin user successfully logged in, cart reset."
    redirect_to :controller => :items
  end

  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "User logged out, cart reset."
    redirect_to :controller => :items
  end
end

