require 'test_helper'

class TasksDestroyTest < ActionDispatch::IntegrationTest
  
  def setup
  	@task = tasks(:task1)
  end

  test "should destroy a given task" do
  	get root_path
  	assert_difference 'Task.count', -1 do
  		delete task_path(@task)
  	end
  	assert_redirected_to root_path
  end
end
