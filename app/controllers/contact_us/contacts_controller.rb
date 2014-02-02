class ContactUs::ContactsController < ApplicationController

  def create
    @contact = ContactUs::Contact.new(params[:contact_us_contact])

    if @contact.save
      redirect_to('/thank_you')
    else
      flash[:error] = 'Unable to send contact us form, please try again later'
      render_new_page
    end
  end

  def new
    @contact = ContactUs::Contact.new
    render_new_page
  end

  protected

    def render_new_page
      render 'new'
    end

end
