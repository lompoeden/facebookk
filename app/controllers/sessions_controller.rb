class SessionsController < ApplicationController
    def new

  end

    def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:notice] = 'login successful'
        redirect_to feeds_path
      else
        flash[ :danger ]= ' Login failed '
        render :new
      end
    end
    def destroy
      session.delete(:user_id)
      flash[ :notice ]= ' Logged out '
      redirect_to new_session_path
    end
    end
