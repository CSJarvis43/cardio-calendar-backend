class HikesController < ApplicationController

    def index
        render json: Hike.all
    end

    def show
        render json: {hike: HikeSerializer.new(find_hike)}
    end

    def create
        render json: {hike: HikeSerializer.new(Hike.create!(hike_params))}, status: :created
    end

    def destroy
        find_hike.destroy
        head :no_content
    end

    private

    def find_hike
        Hike.find(params[:id])
    end

    def hike_params
        params.require(:hike).permit(:activity_id, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
