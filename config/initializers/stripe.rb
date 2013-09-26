Rails.configuration.stripe = {
  :publishable_key => "pk_test_9PskHUu23luHHqu6pwVYSDEt",
  :secret_key      => "sk_test_2xGwezZVNIAO3x7LtFr0kk8S"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]