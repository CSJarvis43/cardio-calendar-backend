class BikesController < ApplicationController

    def index
        render json: Bike.all
    end

    def show
        render json: {bike: BikeSerializer.new(find_bike)}
    end

    def create
        render json: {bike: BikeSerializer.new(Bike.create!(bike_params))}, status: :created
    end

    def destroy
        find_bike.destroy
        head :no_content
    end

    private

    def find_bike
        Bike.find(params[:id])
    end

    def bike_params
        params.require(:bike).permit(:activity_id, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
