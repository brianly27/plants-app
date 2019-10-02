class UsersController < ApplicationController
    before_action :check_auth, only: :show
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

    private

    def set_params
        params.require(:user).permit(:name, :user_name)
    end


end
