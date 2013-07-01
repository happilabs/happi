class VoicesController

    def new
      @voice = Voice.new
    end

    def create
      @voice = Voice.new(params[:voice])
      if @voice.valid?
        # TODO send message here
        redirect_to root_url, notice: "Message sent! Thank you for contacting us."
      else
        render "new"
      end
    end

end
