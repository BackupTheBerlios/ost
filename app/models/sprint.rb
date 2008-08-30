class Sprint < ActiveRecord::Base
	has_many :tasks
	has_many :empediments
end
