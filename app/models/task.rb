class Task < ActiveRecord::Base
	belongs_to :sprint
	belongs_to :backlog
	belongs_to :bug
	has_many :subtasks
end
