class WindowsController < ApplicationController

    def show 
        @window = Window.find(params[:id])
    end

    
end
