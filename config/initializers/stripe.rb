 Rails.configuration.stripe = { 
  :publishable_key => 'pk_test_JSR0lc16TlGb4J60RkT6XH2k', 
  :secret_key => 'sk_test_IALS1Qjvxz1gWZt8JtMIgjmC'
} 

Stripe.api_key = Rails.configuration.stripe[:secret_key]