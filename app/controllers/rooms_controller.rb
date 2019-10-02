class RoomsController < ApplicationController
    before_action :check_auth

    def show
        @room = Room.find(params[:id])
    end

    def new
        @room = Room.new
    end

    def create 
        byebug
        @room = Room.new(set_params)
        if @room.save
            #should save to specific user
            # user = User.find(session[:user_id])
            # user.rooms << @room
            redirect_to room_path(@room)
        else
            render :new
        end

    end

    private 

    def set_params
        params.require(:room).permit(:name)
    end


end
