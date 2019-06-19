class SessionsController < ApplicationController
    
    def new
        render :log_in
    end

    def create
        if @user = User.find_by(user_name: params[:session][:user_name])
            if @user.authenticate(params[:session][:password])
                session[:user_id] = @user.id
                redirect_to posts_path
            end
        else
            flash[:message] = "Invalid Login"
            render :log_in
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end
