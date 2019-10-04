class AuthController < ApplicationController
    before_action :no_auth_view, only: :login
    def login 
    end

    def verify
        # byebug
        #find the user by using params
        #verify the attributes we want to verify
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            #not sure if setting session[:user_id] should be before if-statement
            session[:user_id] = @user.id  
            redirect_to user_path(@user)
        else
            flash[:message] = "You have entered incorrect login information. Please try again"
            render :login
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end


end 
