class SessionsController < ApplicationController

  def new
  end

=begin
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      #session[:user_id] = user.id
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
   
   end
  end

  def destroy
    
  end
end
