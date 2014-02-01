class ContactUs < ActionMailer::Base
  default from: 'paultrott@yahoo.com'
 
  def send_contact_form(person)
    @person = person
    @url = 'http://example.com/Login'
    mail(to: @person.email, subject: 'FishingTackleTracker Contact')
  end
end
