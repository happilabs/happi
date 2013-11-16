class UserMailer < ActionMailer::Base
  default from: "happidevelopers@gmail.com"

  def registration_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Happilabs')
  end

end
