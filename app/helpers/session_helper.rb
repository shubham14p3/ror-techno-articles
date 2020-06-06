module SessionHelper
  def log_out
	flash[:success] = 'Signout Succesfull'
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

    flash[:danger] = 'You must loggin first'
    redirect_to login_path
  end
end
