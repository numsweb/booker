class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  

  
  
    


private
 def login_required
    if session[:user_id].nil?
      flash[:notice] = "You must be logged in to see that page"
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
