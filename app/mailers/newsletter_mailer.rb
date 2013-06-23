class NewsletterMailer < ActionMailer::Base
  default from: "happidevelopers@gmail.com"

  def welcome_email(subscriber)
     @subscriber = subscriber
     mail(to: @subscriber.email, subject: 'Welcome to the Happi Labs Newsletter!')
  end


end
