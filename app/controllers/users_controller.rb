class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.new(params[:id])
        @user.save
        #redirect_to rooms_path
    end

    

end
