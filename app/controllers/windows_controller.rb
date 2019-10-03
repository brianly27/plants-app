class WindowsController < ApplicationController
    before_action :check_auth
    

    def show 
        @window = Window.find(params[:id])
        #store window id to create window-plant join record in plant-
        session[:window_id] = params[:id]

    end

    def new
        @window = Window.new
        user = User.find(session[:user_id])
        @rooms = user.rooms
    end

    def create 
        @window = Window.new(set_params(:facing_direction, :light_intensity, :room_id))
        if @window.save
            flash[:message] = "Try again"
            redirect_to window_path(@window)
        else
            render :new
        end
    end

    def destroy
        window = Window.find(params[:id])
        room = window.room
        window.destroy
        redirect_to room_path(room)
    end
    

    private 

    def set_params(*args)
        params.require(:window).permit(*args)
    end    
end
