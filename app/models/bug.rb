class Bug < ActiveRecord::Base
	has_many :tasks
	belongs_to :component
	belongs_to :employee
end
