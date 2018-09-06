class ApplicationController < ActionController::Base

  def get_current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
end
