class ApplicationController < ActionController::Base
  helper_method :log_in, :current_user, :log_out, :logged_in?, :require_logged_in

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def require_logged_in
    return if logged_in?

    flash[:danger] = 'You must be logged in first'
    redirect_to login_path
  end
end
