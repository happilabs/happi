class PagesMailer < ActionMailer::Base

  default :from => "yoyo@youdomain.dev"
  default :to => "aweiksnar@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "hi")
  end

end
