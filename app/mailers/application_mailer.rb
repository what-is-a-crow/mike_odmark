class ApplicationMailer < ActionMailer::Base
  default from: "inforequest@mikeodmark.com"

  def contact(form)
    @form = form
    email = mail(to: "mjodmark@me.com", subject: "MikeOdmark.com Contact Form Submitted")
    email.deliver
  end
end
