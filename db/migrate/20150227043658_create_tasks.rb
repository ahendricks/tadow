class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :name, default: ''
    	t.date :due_date
    	t.date :completed_date
    end
  end
end
