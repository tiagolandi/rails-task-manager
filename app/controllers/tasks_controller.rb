class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  # create, update & destroy wont need their own view!
  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id]) # no before_action yet !!!
  end

  def update
    @task = Task.find(params[:id]) # no before_action yet !!!
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id]) # no before_action yet !!!
    @task.destroy
    redirect_to tasks_path
  end

  private

  # We cannot save data without using '''Strong Params'''
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
