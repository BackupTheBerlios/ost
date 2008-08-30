class Subtask < ActiveRecord::Base
	belongs_to :task
	belongs_to :employee
	belongs_to :category
	has_many :steps
end
