class Api::V1::SubtasksController < ApplicationController

    def show
        subtask = Subtask.find(params[:id])
        render json: subtask
    end

    def index
        subtasks = Subtask.all
        render json: subtasks, except: [:created_at, :updated_at]
    end
    
    def create
        subtask = Subtask.create!(subtask_params)
        render json: subtask
    end

    def destroy
        subtask = Subtask.find(params[:id])
        subtask.destroy!
        render json: {}
    end

    def update
        subtask = Subtask.find(params[:id])
        subtask.update!(title: params[:title], completion_status: params[:completion_status], task_id: params[:task_id])
        render json: subtask
    end

    private

    def subtask_params
        params.permit(:title, :completion_status, :task_id)
    end


end