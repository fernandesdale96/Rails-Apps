class TasksController < ApplicationController
  def index
    @list = Task.all

    render 'tasks/list.jbuilder'

  end

  def mark_complete
    @task = Task.find(params[:id])
    if @task and @task.update(completed: true)
      render 'tasks/mark_complete.jbuilder'
    end

  end

  def mark_active
    @task = Task.find(params[:id])
    if @task and @task.update(completed: false)
      render 'tasks/mark_active.jbuilder'
    end

  end

  def destroy
    @post_destroy = Task.find(params[:id])

    if @post_destroy and @post_destroy.destroy
      render json:{success: true}
    else
      render json:{success: false}
    end
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      render 'tasks/create.jbuilder'
    end

  end

  private
    def task_params
      params.require(:task).permit(:content)
    end


end
