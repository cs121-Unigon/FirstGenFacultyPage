class FeedbackMailer < ApplicationMailer
  default from: ENV["from_gmail"]

  def feedback_email(feedback)
	@feedback = feedback
	mail(to: ENV["to_gmail"], subject: "Feedback Posted")
  end
end
