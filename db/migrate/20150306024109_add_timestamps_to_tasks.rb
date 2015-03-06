class AddTimestampsToTasks < ActiveRecord::Migration
  def change
  	add_timestamps :tasks
  end
end
