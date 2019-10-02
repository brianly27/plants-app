class AuthController < ApplicationController

    def login 
    end

    def verify
        # byebug
        #find the user by using params
        #verify the attributes we want to verify
        @user = User.find_by(name: params[:name])
        if @user && @user.user_name == params[:user_name]
            #not sure if setting session[:user_id] should be before if-statement
            session[:user_id] = @user.id  
            redirect_to user_path(@user)
        else
            flash[:message] = "You have entered incorrect login information. Please try again"
            render :login
        end
    
    end

end 
