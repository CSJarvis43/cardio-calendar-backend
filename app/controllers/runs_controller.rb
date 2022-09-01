class RunsController < ApplicationController

    def index
        render json: Run.all
    end

    def show
        render json: {run: RunSerializer.new(find_run)}
    end

    def create
        render json: {run: RunSerializer.new(Run.create!(run_params))}, status: :created
    end

    def destroy
        find_run.destroy
        head :no_content
    end

    private

    def find_run
        Run.find(params[:id])
    end

    def run_params
        params.require(:run).permit(:activity_id, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
