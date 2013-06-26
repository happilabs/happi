class PagesController < ApplicationController

  def index

  end

  def about_us

  end

  def sign_up

  end

  def voices
    @message = Message.new
  end

  def create_voice
    @message = Message.new(params[:message])

    if @message.valid?
      VoicesMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end


end
