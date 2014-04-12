class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :controller => 'member_tackles', :action => 'index'
    end
  end

end
