class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  	@new_task = Task.new
  end

  def create
  	@task = Task.new(task_params)
  	if @task.save
  		flash[:success] = "Task successfully saved."
  		redirect_to root_path
  	else
  		flash[:warning] = "Task not saved."
  		redirect_to root_path
  	end
  end


  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      flash[:success] = "Task successfully deleted."
      redirect_to root_path
    else
      flash[:warning] = "Task not deleted."
      redirect_to root_path
    end
  end

  private

  	def task_params
  		params.require(:task).permit(:name)
  	end

  end