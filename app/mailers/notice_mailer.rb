class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog
    mail to: "yrmk.gsak@gmail.com", subject: 'New blog was created.'
  end
  
  def sendmail_contact(contact)
    @contact = contact
    #mail to: contact.mail, subject: 'We recieved your inquiry!'
    mail to: "yrmk.gsak@gmail.com", subject: 'We recieved your inquiry!'
  end
end
