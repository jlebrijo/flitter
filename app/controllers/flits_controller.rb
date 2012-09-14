class FlitsController < ApplicationController
  before_filter :login_required
  def create
    flit = current_user.flits.create(:message => params[:message])
    flit.save!
    redirect_to root_path
  end
  def destroy
    
  end
end
