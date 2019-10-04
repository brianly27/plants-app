class UsersController < ApplicationController
    before_action :check_auth, only: [:show, :edit, :update]
    before_action :no_auth_view, only: :new


    def show
        @user = User.find(params[:id]) 
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.new(set_params)
        if @user.save
            redirect_to user_path(@user)
        else
            flash[:message] = "You have entered something invalid, please try again."
            render :new
        end
    end

    def edit
        @user = User.find(session[:user_id])
    end

    def update
        @user = User.find(session[:user_id])
        @user.update(set_params)
        redirect_to user_path(@user)
    end

    private

    def set_params
        params.require(:user).permit(:name, :user_name, :password, :password_confirmation)
    end


end
