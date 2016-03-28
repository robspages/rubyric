class Assignment < ActiveRecord::Base
	has_and_belongs_to_many :courses, through: :assignment_course
	has_many :criteria
	accepts_nested_attributes_for :criteria
end
