class ActiveDaysController < ApplicationController

    def index
        render json: ActiveDay.all
    end

    def show
        render json: {active_day: ActiveDaySerializer.new(find_active_day)}
    end

    def create
        render json: {active_day: ActiveDaySerializer.new(ActiveDay.create!(active_day_params))}, status: :created
    end

    def destroy
        find_active_day.destroy
        head :no_content
    end

    def activities_index
        active_day = find_active_day
        activities = active_day.activities
        render json: activities, include: :active_day
    end

    private

    def find_active_day
        ActiveDay.find(params[:id])
    end

    def active_day_params
        params.require(:active_day).permit(:date, :day_of_week, :streak, :user_id)
    end
end
