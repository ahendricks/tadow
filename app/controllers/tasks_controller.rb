class TasksController < ApplicationController
  def index
  	@tasks = Task.where(due_date: Date.today.beginning_of_week-1..Date.today.end_of_week-1)
  	@new_task = Task.new
    @dates = Date.today.beginning_of_week-1..Date.today.end_of_week-1
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

  def complete
    @task = Task.find(params[:id])
    @task.completed_date = Time.now
    if @task.save
      flash[:success] = "Task marked as complete."
      redirect_to root_path
    else
      flash[:warning] = "Task not completed."
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