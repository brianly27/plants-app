class WindowsController < ApplicationController
    before_action :check_auth

    def show 
        @window = Window.find(params[:id])
    end

    
end
