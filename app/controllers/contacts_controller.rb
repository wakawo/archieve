class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def back
    @contact = Contact.new(contact_params)
    render :new
  end

  def confirm
    @contact = Contact.new(contact_params)
  end

  def thanks
    @contact = Contact.new(contact_params)
    NoticeMailer.sendmail_contact(@contact).deliver
    @contact.save
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :mail, :category, :content)
    end
  
end
