class NavsController < ApplicationController
  def home
  	@i=1
  	@user=current_user
  end

  def blog
    Budget.create[:params_id]
  end
  def about_us
  end
  def follow(notifid)
  	Follow.create(email:current_user.email,notif_id:notifid)
  end
  helper_method :follow
end
