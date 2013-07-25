class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 19500
    @user = User.find(current_user.id)

    customer = Stripe::Customer.create(
      :email => 'happidevelopers@gmail.com',
      :card  => params[:stripeToken],
      # :api_key => Stripe.api_key
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => '200 ul Annual Subscription',
      :currency    => 'usd'
    )

    # TODO - build in logic if the user cancels their account
    # TODO - build in stripe logic to bill them recurring
    # TODO -
    @user.subcription_level = "200 microliter"
    @user.save

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
