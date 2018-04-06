class Feedback < ApplicationRecord
	validates :content, presence: true
	OPTIONS = ['Testimonial', 'Question', 'Private', 'Feedback', 'Other']
end
