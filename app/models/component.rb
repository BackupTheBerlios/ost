class Component < ActiveRecord::Base
	belongs_to :employee
	has_many :bugs
end
