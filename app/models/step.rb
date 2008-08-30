class Step < ActiveRecord::Base
	belongs_to :subtask
	belongs_to :employee
end
