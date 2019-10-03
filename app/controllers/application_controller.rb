class ApplicationController < ActionController::Base

    def check_auth
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        session[:user_id]
    end


end
