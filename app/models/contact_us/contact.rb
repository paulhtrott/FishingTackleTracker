class ContactUs::Contact
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :nickname, :email, :message, :name, :subject

  validates :nickname, :format => { :with => /\A\z/ }
  validates :email,   :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i },
                      :presence => true
  validates :message, :presence => true, :length => { :minimum => 10, :maximum => 1000 }
  validates :name,    :presence => true, :length => { :minimum => 2 }
  validates :subject, :presence => true, :length => { :minimum => 5 }

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def save
    if self.valid?
      ContactUs::ContactMailer.contact_email(self).deliver
      return true
    end
    return false
  end

  def persisted?
    false
  end

end
