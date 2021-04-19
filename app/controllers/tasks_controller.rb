class TasksController < ApplicationController

  def edit
    @task =Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task
    else
      render action: 'edit'
    end
  end

  def show
    @task =Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end
  def new

  end

  def create
    @task = Task.new(task_params)
    if @task.valid?
      @task.save
      redirect_to @task
    else
      render action: 'new'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy


  end



  private
  def task_params
    params.require(:task).permit(:title, :text)
  end

end