class RoomsController < ApplicationController
    before_action :check_auth

    def show
        @room = Room.find(params[:id])
    end

    def new
        @room = Room.new
    end

    def create 
        # byebug
        @room = Room.new(set_params(:name))
        @room.user_id = session[:user_id]
        
        if @room.save
            redirect_to room_path(@room)
        else
            render :new
        end
    end

    def destroy 
        Room.find(params[:id]).destroy
        redirect_to user_path(session[:user_id])
    end

    private 

    def set_params(*args)
        params.require(:room).permit(*args)
    end


end
