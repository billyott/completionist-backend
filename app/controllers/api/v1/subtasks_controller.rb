class Api::V1::SubtasksController < ApplicationController

    def show
        subtask = Subtask.find(params[:id])
        render json: subtask
    end


end