class ApplicationController < ActionController::Base

  # protect_from_forgery with: :exception
  # uncomment the above line before launch

  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  

  def is_authenticated
    redirect_to login_url unless current_user
  end
end
