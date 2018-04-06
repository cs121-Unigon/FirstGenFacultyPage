class FeedbackMailer < ApplicationMailer
  default from: ENV["from_gmail"]

  def feedback_email(feedback)
	@feedback = feedback
	subj = "FGFP: Feedback Posted: " + @feedback.option
	mail(to: ENV["to_email"], subject: subj)
  end
end
