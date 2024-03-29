class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 25000
    @user = User.find(current_user)

    customer = Stripe::Customer.create(
      :email => @user.email,
      :card  => params[:stripeToken]
      # :api_key => Stripe.api_key
    )

  charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => '200 ul Annual Subscription.',
      :currency    => 'usd'
    )

  @user.subcription_level = "200"
  @user.save

    # TODO - Stripe: build in logic if the user cancels their account
    # TODO - Stripe: build in stripe logic to bill them recurring
    # TODO - Stripe: add Stripe Webhooks
    # TODO - Controller Action: create vsariable for price vs. having hardcoded

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
