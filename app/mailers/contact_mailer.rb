class ContactMailer < ActionMailer::Base
  default from: "thestartupcommunity@gmail.com"

  def contact_form_received(contact)
    @contact = contact
    mail(:to => "peter.argent@gmail.com", :subject => "The Startup Community - Contact Form")
  end
end
