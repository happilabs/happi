class PagesController < ApplicationController

  def index
    @message = Message.new
    @user_voice = UserVoice.new
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
      email = PagesMailer.new_message(@message)
      email.deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

  def user_voices
    @user_voices = UserVoice.all
  end

  def create_user_voice
    @user_voice = UserVoice.new(params[:user_voice])

    respond_to do |format|
      if @user_voice.save
        format.html { redirect_to root_path, notice: 'Voice was successfully created. Thank you for your input' }
        format.json { render json: @user_voice, status: :created, location: @user_voice}
      else
        format.html { render 'index', notice: "Voice did not save, please try again" }
        format.json { render json: @user_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  def contact

  end

  def two_hundred_ml

  end

  def one_thousand_ml

  end

end
