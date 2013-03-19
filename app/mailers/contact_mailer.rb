class ContactMailer < ActionMailer::Base
  default from: "template.dream@wix.com"
  default to:   "daphna@wix.com"

  def contact(request)
    body = "Message from #{request['name']} <#{request['email']}>\n\n#{request['body']}"
    mail :subject => "Contact form request: #{request['subject']}", :body => body
  end
end
