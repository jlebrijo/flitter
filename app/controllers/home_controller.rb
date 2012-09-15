class HomeController < ApplicationController
  before_filter :login_required
  def index
    @flits = current_user.all_flits.reverse
    @last_flit = current_user.flits.last
  end
  def show
    @user = User.find_by_username(params[:username])
    @flits = @user.flits.reverse
  end
end
