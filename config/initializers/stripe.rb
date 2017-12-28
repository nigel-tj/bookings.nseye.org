Rails.configuration.stripe = {

  :publishable_key => 'pk_test_mMy5ioKjA3c0s1hvxmmPxoSK',
  :secret_key      => 'sk_test_cWcdjtk7BseAOhbw1aGCdvx3'}


Stripe.api_key = Rails.configuration.stripe[:secret_key]

