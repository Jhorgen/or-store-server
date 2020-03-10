class ApplicationMailer < ActionMailer::Base
  default from: 'theouterrimshop@gmail.com'
  layout 'mailer'

  def message_customer(purchase)
    @purchase = purchase
    mail(:to => @purchase.email, subject: 'The Outer Rim Bicycles - Purchace receipt')
  end

  def message_store(purchase)
    @purchase = purchase
    mail(:to => "theouterrimshop@.sales@gmail.com", subject: 'Orb purchase')
  end

end
