class ContactMailer < ActionMailer::Base
  default from: "thestartupcommunity@gmail.com"

  def contact_form_received(contact)
    @contact = contact
    mail(:to => "peter@sydneydevcamp.com", :subject => "The Startup Community - Contact Form")
  end
end
