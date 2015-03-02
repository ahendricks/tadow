require 'test_helper'

class TaskTest < ActiveSupport::TestCase

	def setup
		@task = Task.new(name: "Mop the floor")
	end

	test "should be valid" do
		assert @task.valid?
	end

	test "should require name" do
		@task.name = ""
		assert_not @task.valid?
	end

	test "name should not be too long" do
		@task.name = 'a'*51
		assert_not @task.valid?
	end
end
