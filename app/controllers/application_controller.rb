# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include KoalaClient::Authentication
  before_filter :authentication_required, :except => :nullify_session
  before_filter :update_session_expiry
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def access_granted?
    session[:user] and session[:user_type] == "admin"
  end
  
  def correct_user_type?  
    true
    #["rengastaja", "maallikko", "rengastuskeskus"].include?(session[:user_type])
  end

  def nullify_session
    reset_session
    render :text => "session nullified"
  end
  
end
