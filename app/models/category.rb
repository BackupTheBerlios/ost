class Category < ActiveRecord::Base
	has_many :subtasks
end
