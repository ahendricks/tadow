require 'test_helper'

class TasksCompleteTest < ActionDispatch::IntegrationTest

	def setup
		@task = tasks(:task1)
	end

	test "should complete task" do
		get root_path
		patch complete_task_path(@task)
		@task.reload
		assert @task.completed_date
		assert_redirected_to root_path 
	end

end