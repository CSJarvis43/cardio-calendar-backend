class SwimsController < ApplicationController

    def index
        render json: Swim.all
    end

    def show
        render json: {swim: SwimSerializer.new(find_swim)}
    end

    def create
        render json: {swim: SwimSerializer.new(Swim.create!(swim_params))}, status: :created
    end

    def destroy
        find_swim.destroy
        head :no_content
    end

    private

    def find_swim
        Swim.find(params[:id])
    end

    def swim_params
        params.require(:swim).permit(:activity_id, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
