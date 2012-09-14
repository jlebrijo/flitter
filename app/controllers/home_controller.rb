class HomeController < ApplicationController
  before_filter :login_required
  def index
    @flits = current_user.all_flits.reverse
  end
end
