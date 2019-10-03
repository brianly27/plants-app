class PlantsWindowsController < ApplicationController
    before_action :check_auth

    def show
        @plants_window = PlantsWindow.find(params[:id])
    end


    def new
        @plants_window = PlantsWindow.new
        @plants = Plant.all
    end

    def create 
        @plants_window = PlantsWindow.new(set_params(:plant_id))
        @plants_window.window_id = session[:window_id]
        if @plants_window.save
            redirect_to window_path(session[:window_id])
        else
            render :new 
        end
    end

    # def destroy
        
    # end

    private 

    def set_params(*args)
        params.require(:plants_window).permit(*args)
    end   


end
