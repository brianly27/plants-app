class ApplicationController < ActionController::Base
    helper_method :check_auth, :logged_in?, :current_user, :no_auth_view

    def check_auth
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        session[:user_id]
    end

    def current_user
        User.find(session[:user_id])
    end

    def no_auth_view
        if logged_in?
            redirect_to user_path(session[:user_id])
        end
    end


end
