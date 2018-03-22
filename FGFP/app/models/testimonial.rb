class Testimonial < ApplicationRecord
	validates :comment, presence: true
end
