class Task < ActiveRecord::Base
	before_create :set_due_date_to_today

	validates :name, presence: true, length: { maximum: 50 }


	def set_due_date_to_today
		self.due_date = Time.now
	end
end