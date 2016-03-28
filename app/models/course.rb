class Course < ActiveRecord::Base
	has_and_belongs_to_many :assignments, through: :assignment_course
	has_and_belongs_to_many :students, through: :roster
	
end
