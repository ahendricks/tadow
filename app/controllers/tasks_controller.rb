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
end

private

	def task_params
		params.require(:task).permit(:name)
	end
