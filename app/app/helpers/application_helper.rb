module ApplicationHelper
  def get_flash_bootstrap_class(level)
    case level
        when 'notice' then "alert alert-info"
        when 'success' then "alert alert-success"
        when 'error' then "alert alert-error"
        when 'alert' then "alert alert-error"
    end
  end

  def get_current_user
    @current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
end


