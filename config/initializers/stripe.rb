Rails.configuration.stripe = {
  :publishable_key => "pk_live_n1ljYhjnayiqJYmCVqRGYCiB",
  :secret_key      => "sk_live_ymd3OmzBg67gdd1UHEgVrV2F"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
