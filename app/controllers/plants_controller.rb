class PlantsController < ApplicationController
    before_action :check_auth

    def index 
        @plants = Plant.all
    end

    def show
        @plant = Plant.find(params[:id])
    end

end
