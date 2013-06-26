class VoicesMailer < ActionMailer::Base

  # default :from => "noreply@youdomain.dev"
  default :to => "aweiksnar@gmail.com"

  def new_message(message)
    @message = message
    mail(:from => message.email, :body => message.body)
  end

end
