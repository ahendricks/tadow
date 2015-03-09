require 'test_helper'

class TasksPaginationTest < ActionDispatch::IntegrationTest

	def setup
		@task = (:task1)
		@old_task = (:older_task)
		@new_task = (:newer_task)
	end

	test "should paginate backward" do
		
	end
end