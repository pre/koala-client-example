class LolcatsController < ApplicationController
  
  def index
    render :text => "It works! User: #{@user.inspect}, session[:user]: #{session[:user]}, session[:user_type]: #{session[:user_type]}"
  end
end
