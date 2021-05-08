class Api::V1::GoalsController < ApplicationController
        # before_action :find_goal #, only: [:update]

    def index
	@goals = Goal.all.order(:created_at)
	render json: @goals, status: 200
    end

    def create
        @goal = Goal.create(goal_params)
        render json: @goal, status: 201
    end

    def destroy
        goal = Goal.find(params[:id])
        if goal.destroy
        render json: {goalId: goal.id}, status: 200
        end
    end

    def update
        @goal = Goal.find(params[:id])

    if @goal.update(goal_params)
        render json: @goal, status: 200

        @goal.update(goal_params)
    if @goal.save
            render json: @goal, status: :accepted
    else
            render json: { errors: @goal.errors.full_messages }, status: :unprocessible_entity
                end
            end
        end

private
    def goal_params
      params.require(:goal).permit(:type, :name, :duration, :distance)
    end

		def goal_params
				params.permit(:title, :content)
		end
		
		def find_goal
			@goal = Goal.find(params[:id])
		end
end
