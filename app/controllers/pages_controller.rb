class PagesController < ApplicationController
  	


  def home
  @match = User.order("RANDOM()").limit(1)

    respond_to do |format|
      format.html # home.html.erb
      format.json { render json: @users }
    end
  end






  
  	
  	

  def settings
  end

  def matches
  end
end
