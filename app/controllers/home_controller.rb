class HomeController < ApplicationController
  before_filter :login_required, :only => [:index, :toggle_follow]
  def index
    @flits = current_user.all_flits.reverse
    @last_flit = current_user.flits.last
  end
  def show
    @user = User.find_by_username(params[:username])
    @flits = @user.flits.reverse
  end
  def toggle_follow
   
    @user = User.find_by_username(params[:username])
    if current_user.is_friend_of(@user)
      flash[:notice] = "You are no longer following @#{@user.username}"
      current_user.friends.delete(@user)
    else
      flash[:notice] = "You are following @#{@user.username}"
      current_user.friends << @user
    end
    redirect_to timeline_path(@user.username)
  end
end
