class ActivitiesController < ApplicationController

    def index
        render json: Activity.all
    end

    def show
        render json: {activity: ActivitySerializer.new(find_activity)}
    end

    def create
        render json: {activity: ActivitySerializer.new(Activity.create!(activity_params))}, status: :created
    end

    def destroy
        find_activity.destroy
        head :no_content
    end

    private

    def find_activity
        Activity.find(params[:id])
    end

    def activity_params
        params.require(:activity).permit(:active_day_id, :exercise_type, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
