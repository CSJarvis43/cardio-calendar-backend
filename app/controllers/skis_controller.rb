class SkisController < ApplicationController

    def index
        render json: Ski.all
    end

    def show
        render json: {ski: SkiSerializer.new(find_ski)}
    end

    def create
        render json: {ski: SkiSerializer.new(Ski.create!(ski_params))}, status: :created
    end

    def destroy
        find_ski.destroy
        head :no_content
    end

    private

    def find_ski
        Ski.find(params[:id])
    end

    def ski_params
        params.require(:ski).permit(:activity_id, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
