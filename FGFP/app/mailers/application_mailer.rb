class ApplicationMailer < ActionMailer::Base
  default from: ENV["from_gmail"]
  layout 'mailer'
end
