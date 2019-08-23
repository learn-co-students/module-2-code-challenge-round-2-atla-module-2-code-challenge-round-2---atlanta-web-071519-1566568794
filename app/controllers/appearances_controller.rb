class AppearancesController < ApplicationController


    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
            redirect_to appearance_path(@appearance)
        else
            render :new
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:appearance_id, :guest_id, :episode_id, :rating)
    end
end