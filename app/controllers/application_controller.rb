class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  #we create a helper method here to show the log in status of the user
  #this will talk to the associated view, and display a message according to the status of the current_user variable
  

  helper_method :current_user
end
