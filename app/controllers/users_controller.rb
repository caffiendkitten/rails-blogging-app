class UsersController < ApplicationController
    
    def new
        @user = User.new
        render :sign_up
    end

    def show
        @user = User.find_by(id: session[:user_id])
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            log_in(@user)
            redirect_to @user
        else
            render :sign_up
        end
    end

    private

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation)
    end
end
