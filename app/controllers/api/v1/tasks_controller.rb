class Api::V1::TasksController < ApplicationController

    def show
        task = Task.find(params[:id])
        render json: task, except: [:created_at, :updated_at]
    end

    def index
        tasks = Task.all
        render json: tasks, except: [:created_at, :updated_at]
    end
    
    def create
        task = Task.create!(task_params)
        render json: task
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy!
        render json: {}
    end

    def update
        task = Task.find(params[:id])
        task.update!(title: params[:title], priority_level: params[:priority_level], due_date: params[:due_date], tag: params[:tag], description: params[:description], completion_status: params[:completion_status], user_id: params[:user_id])
        render json: task
    end

    private

    def task_params
        params.permit(:title, :priority_level, :due_date, :tag, :description, :completion_status, :user_id)
    end

end