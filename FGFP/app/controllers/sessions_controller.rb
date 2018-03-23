class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
   
    # if the user isn't a prof yet, let them make a prof
    if Prof.where(:user_id => user.id).empty?
      redirect_to new_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
