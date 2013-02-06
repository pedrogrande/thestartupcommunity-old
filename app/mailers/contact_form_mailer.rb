class ContactFormMailer < ActionMailer::Base
  default from: "thestartupcommunity@gmail.com"

  def contact_form_submitted(contact)
    @contact = contact
    mail(:to => contact.email, :subject => "Thank you for your feedback - The Startup Community")
  end
end
