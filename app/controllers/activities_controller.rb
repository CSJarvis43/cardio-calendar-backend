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

    def top_activities
        @column = params[:column]
        @activities = Activity.where("exercise_type = ?", params[:exercise_type])
        @activities_by_column = @activities.sort_by do |a|
            a[@column]
        end

        render json: @activities_by_column.reverse.to_json(:include => :active_day)
    end

    private

    def find_activity
        Activity.find(params[:id])
    end

    def activity_params
        params.require(:activity).permit(:active_day_id, :exercise_type, :activity_length, :calories, :distance, :streak, :rating, :summary)
    end
end
