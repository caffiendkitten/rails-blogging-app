class ApplicationController < ActionController::Base
    include SessionsHelper

    helper_method :logged_in?
    helper_method :current_user

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        if session[:user_id]
          @current_user = User.find_by(id: session[:user_id])
        else
            redirect_to login_path
        end
    end


end
