class TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end
  
  def create
    new_task = Task.new(tasks_params)
    new_task.save
    render json: new_task
  end

  def destory
    task = Task.find(params[:id])
    task.destory
  end

  def tasks_params
    params.require(:task).permit(:title)
  end
end
