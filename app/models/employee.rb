class Employee < ActiveRecord::Base
	belongs_to :team
	has_many :subtasks
	has_many :steps
	has_many :bugs
	has_many :components
end
