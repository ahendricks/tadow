require 'test_helper'

class TasksCreateTest < ActionDispatch::IntegrationTest
  
  test "valid task information" do
  	get root_path
  	assert_difference 'Task.count' do
  		post tasks_path, task: { name: 'mop the floor' }
  	end
  	assert_redirected_to root_path
  end

  test "invalid task information" do
  	get root_path
  	assert_no_difference 'Task.count' do
  		post tasks_path, task: { name: '' }
  	end
  	assert_redirected_to root_path
  end
end
