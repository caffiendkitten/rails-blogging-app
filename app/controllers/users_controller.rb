class UsersController < ApplicationController
    # before_action :current_user

    def new
        @user = User.new
        render :sign_up
    end

    def show
        if logged_in?
            @user = User.find_by(id: session[:user_id])
        else
            redirect_to login_path
        end
    end

    def create
        @user = User.new(user_params)
        @user.pic = Faker::Avatar.image 
        if @user.save
            log_in(@user)
            redirect_to posts_path
        else
            render :sign_up
        end
    end

    def edit
        @user = User.find_by(id: session[:user_id])
    end

    def update
        @user = User.find_by(id: session[:user_id])
        @user.update(bio: params[:user][:bio])
        redirect_to @user
    end

    private

    def user_params
        params.require(:user).permit(:user_name, :password, :password_confirmation)
    end
end
