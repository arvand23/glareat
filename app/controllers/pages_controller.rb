class PagesController < ApplicationController
  	


  def home
    if current_user.present?
      @bro = current_user.school
      if current_user.sex == "M"
        @match = User.where(sex: "F").where(school: @bro).limit(1)
      elsif 
        @match = User.where(sex: 'M').where(school: @bro).limit(1)
      end
    else

    end



  end








  
  	
  	

  def settings
  end

  def matches
  end
end
