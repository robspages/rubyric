class Criterium < ActiveRecord::Base
	has_many :raitings
	accepts_nested_attributes_for :raitings
	belongs_to :assignment
end
