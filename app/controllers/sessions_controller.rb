class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
      redirect_to root_path
      flash[:info] = 'Logged in successfully!'
    else
      flash.now[:danger] = 'This user does not exist'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
