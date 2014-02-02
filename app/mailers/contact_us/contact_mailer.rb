class ContactUs::ContactMailer < ActionMailer::Base
  def contact_email(contact)
    @contact = contact

    mail :from    => @contact.email,
         :reply_to => @contact.email,
         :subject => @contact.subject,
         :to      => "fishingtackletracker@gmail.com"
  end
end
